angular.module('starter.services', ['ngCordova'])

.factory('LaggingSkills', function($cordovaSQLite) {
  // Might use a resource here that returns a JSON array
  function getLaggingSkills(child_id, callback){
    let lagging_skills = [];
    let query ="SELECT * FROM lagging_skills WHERE child_id = ?";
    $cordovaSQLite.execute(db,query,[child_id]).then(function(result) {
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          lagging_skills.push(rows.item(i));
        }
        callback(lagging_skills);
      }
      },function(err){
        console.log(err.message);
      });
  }
  function uncheckLaggingSkill(lagginSkillId,child_id){
    console.log("Controller out Child id:" + child_id);
    let query = "UPDATE lagging_skills SET checked = 0 where id = ?";
    $cordovaSQLite.execute(db,query,lagginSkillId);
    let query2 = "UPDATE childs SET lagging_skills_check = lagging_skills_check - 1 where id = ?";
    $cordovaSQLite.execute(db,query2,child_id);

  }
  function checkLaggingSkill(lagginSkillId,child_id){
    let query = "UPDATE lagging_skills SET checked = 1 where id = ?";
    $cordovaSQLite.execute(db,query,lagginSkillId);
    console.log("Services Child id: " + child_id);
    let query2 = "UPDATE childs SET lagging_skills_check = lagging_skills_check + 1 where id = ?";
    $cordovaSQLite.execute(db,query2,child_id);
  }

  return {
    all: function(callback, childId) {
      getLaggingSkills(callback, childId);
    },
    get: function(laggingSkillList,laggingSkillsId) {
      for (let i = 0; i < laggingSkillList.length; i++) {
        if (laggingSkillList[i].id === parseInt(laggingSkillsId)) {
          return laggingSkillList[i];
        }
      }
      return null;
    },
    check: function(laggingskillId, child_id){
      checkLaggingSkill(laggingskillId, child_id);
    },
    uncheck: function(laggingskillId, child_id){
      uncheckLaggingSkill(laggingskillId, child_id);
    },
    getChecked: function(laggingSkillList){
        let laggingSkillsCheckedList = [];
        for (let i = 0; i < laggingSkillList.length; i++) {
          if (laggingSkillList[i].checked === 1) {
            laggingSkillsCheckedList.push(laggingSkillList[i]);
          }
        }
        return laggingSkillsCheckedList;
    },
    getCheckedCount: function(laggingSkillList){
      let laggingSkillsCheckedCount = 0;
      
      for (let i = 0; i < laggingSkillList.length; i++) {
        if (laggingSkillList[i].checked === 1) {
          laggingSkillsCheckedCount = laggingSkillsCheckedCount + 1;
        }
      }
      return laggingSkillsCheckedCount;
  }

  };
})

.factory('DataSeed', function() {
  return {
    seed: function($cordovaSQLite, db) {
      $cordovaSQLite.execute(db, "CREATE TABLE IF NOT EXISTS lagging_skills (id integer primary key, description text)");
      return;
    },
    deleteSeed: function($cordovaSQLite, db){
      $cordovaSQLite.execute(db, "DROP TABLE lagging_skills");
    }
  };
})

.factory('HelpCategoriesStep1',function(){
  // First Step help categories and data

  let helpCategoriesForStep1 = [
    {name : "help_category_01" , description : "The child isn???t talking", image: "category_1.png",id:1,
      topics: [
        {name: "topic_01", description: "Maybe the unsolved problem wasn???t free of challenging behavior, or it wasn???t specific, or it contained an adult theory, or it was 'clumped'?", id:"1"},
        {name: "topic_02", title:"help_category_01topic_02", description: "Maybe you are using Emergency B (in the heat of the moment when the child is already upset) instead of Proactive B?", id:"2",
          contents: [
            {name: "content_01", description: "Make an appointment", link:"http://www.blogtalkradio.com/dr-ross-greene/2011/05/24/parenting-challenging-kids-collaborative-problem-solving-at-home", id:"1"},
            {name: "content_02", description: "What's the best thing to do in the heat of the moment", link: "http://www.blogtalkradio.com/dr-ross-greene/2016/01/25/the-heat-of-the-moment",id:"2"},
            {name: "content_03", description: "What to do when your child is in the midst of an outburst", link: "http://www.blogtalkradio.com/dr-ross-greene/2015/03/30/the-heat-of-the-moment", id:"3"}
          ]
        },
        {name: "topic_03", description: "Maybe you are using Plan A?", id:"3"},
        {name: "topic_04", description: "Maybe s/he really doesn???t know/hasn???t been asked about this before", id:"4"},
        {name: "topic_05", title:"help_category_01topic_05", description: "Maybe s/he needs the problem broken down into its component parts:", id:"5",
          contents: [
            {name: "content_01", description: "EXAMPLE: So writing the answers to the questions on the science quiz is hard for you???but you???re not sure why. Let???s think about the different parts of answering questions on the science quiz. First, you have to understand what the question is asking. Is that part hard for you? Next, you need to think of the answer to the question. Is that part hard? Next, you have to remember the answer long enough to write it down. Are you having trouble with that part? Then you have to actually do the writing. Any trouble with that part????", id:"1"}
          ]
        },
        {name: "topic_06", description: "Maybe s/he needs time to think", id:"6"},
        {name: "topic_07", title:"help_category_01topic_07", description: "Maybe s/he doesn???t have the words to tell you", id:"7",
          contents: [
            {name: "content_01", description: "Give your child the fingers",link:"http://www.blogtalkradio.com/dr-ross-greene/2016/03/14/give-your-kid-the-fingers", id:"1"}
          ]
        },
        {name: "topic_08", description: "My child won???t talk to me", id:"8", link:"http://www.blogtalkradio.com/dr-ross-greene/2010/09/21/parenting-challenging-kids-collaborative-problem-s"},
        {name: "topic_09", description: "Talking about talking", id:"9", link:"http://www.blogtalkradio.com/dr-ross-greene/2013/05/20/parenting-your-challenging-child"}
      ]
    },

      {name : "help_category_02", description : "My child is too young to do CPS",image: "category_2.png", id:2,
        topics: [
          {name: "topic_01", description: "Solving problems collaboratively with young children", id:"1",link:"http://www.blogtalkradio.com/dr-ross-greene/2010/04/27/parenting-challenging-kids-collaborative-problem-s"},
          {name: "topic_02", description: "Can you use Plan B with young childs?", id:"2", link:"http://www.blogtalkradio.com/dr-ross-greene/2011/03/08/parenting-challenging-kids-collaborative-problem-solving-at-home"},
        ]
      },
      {name : "help_category_03", description : "The child talked but I don???t know what to do with what s/he said", image: "category_3.png", id:3,
        topics:[
          {name: "topic_01", title:"help_category_03topic_01", description: "Are you confused?", id:"1",
            contents: [
              {name: "content_01", description: "Use REFLECTIVE LISTENING AND CLARIFYING STATEMENTS - Reflective listening basically involves mirroring what a child has said and then encouraging him/her to provide additional information by saying one of the following: ??? ???How so???? ??? ???I don???t quite understand??? ??? ???I???m confused??? ??? ???Can you say more about that???? ??? ???What do you mean???? Reflective listening is your ???default??? drilling strategy???if you aren???t sure of which strategy to use or what to say next, use this strategy.", id:"1"}
            ]
          },
          {name: "topic_02", title:"help_category_03topic_02", description: "Need more information?", id:"2",
            contents: [
              {name: "content_01", description: "ASK ABOUT THE WHO, WHAT, WHERE/WHEN OF THE UNSOLVED PROBLEM EXAMPLES: ??? ???Who was making fun of your clothes???? ??? ???What???s getting the way of completing the science project??????? ???Where is Eddie bossing you around????", id:"1"},
              {name: "content_02", description: "ASK ABOUT WHY THE PROBLEM OCCURS UNDER SOME CONDITIONS AND NOT OTHERS EXAMPLE: ???You seem to be doing really well in your work group in math??? but not so well in your work group in social studies??? what???s getting in the way in social studies????", id:"2"},
              {name: "content_03", description: "ASK THE CHILD WHAT S/HE???S THINKING IN THE MIDST OF THE UNSOLVED PROBLEM Notice, this is different than asking the child what s/he is feeling, which doesn???t usually provide much information about the child???s concern or perspective on an unsolved problem.  EXAMPLE: ???What were you thinking when Mrs. Thompson told the class to get to work on the science quiz????", id:"3"}
            ]
          },
          {name: "topic_03", title:"help_category_03topic_03", description: "The child said something that is different than I what observed?", id:"3",
            contents: [
              {name: "content_01", description: "Make a DISCREPANT OBSERVATION - This involves making an observation that differs from what the child is describing about a particular situation, and it???s the riskiest (in terms of causing the child to stop talking) of all the drilling strategies. EXAMPLE: ???I know you???re saying that you haven???t been having any difficulty with Chad on the playground lately, but I recall a few times last week when you guys were having a big disagreement about the rules in the box-ball game. What do you think was going on with that????", id:"1"}
            ]
          },
          {name: "topic_04", title:"help_category_03topic_04", description: "The child said some concerns but I think there are more!", id:"4",
            contents: [
              {name: "content_01", description: "Use TABLING (AND ASKING FOR MORE CONCERNS) This is where you???re ???shelving??? some concerns the child has already expressed so as to permit consideration of other concerns. EXAMPLE: ???So if Timmy wasn???t sitting too close to you, and Robbie wasn???t making noises, and the floor wasn???t dirty, and the buttons in your pants weren???t bothering you???is there anything else that would make it difficult for you to participate in Morning Meeting????", id:"1"}
            ]
          },

          {name: "topic_05", title:"help_category_03topic_05", description: "I???m not sure I???m done with Step 1", id:"5",
            contents: [
              {name: "content_01", description: "SUMMARIZE AND ASK FOR MORE CONCERNS This is where you???re summarizing concerns you???ve already heard about and then asking if there are any other concerns that haven???t yet been discussed. This is the recommended strategy to use before moving on to the Define Adult Concerns step. EXAMPLE: ???Let me make sure I understand all of this correctly. It???s hard for you to do your social studies worksheet for homework because writing down the answers is still hard for you???and because sometimes you don???t understand the question???and because Mrs. Langley hasn???t yet covered the material on the worksheet. Is there anything else that???s hard for you about completing the social studies worksheet for homework????", id:"1"},
              {name: "content_02", description: "When you???ve summarized and asked for more concerns, and the child has none, you are done with Step 1", id:"2"}
            ]
        },
          {name: "topic_06", title:"help_category_03topic_06", description: "I don???t know how to drill", id:"6",
            contents: [
              {name: "content_01", description: "Drilling video", video:"drillingVideo", id:"1"},
              {name: "content_02", description: "Creative drilling",link:"http://www.blogtalkradio.com/dr-ross-greene/2015/10/05/creative-drilling", id:"2"},
              {name: "content_03", description: "Can???t solve problems without identifying a childs??? concern",link:"http://www.blogtalkradio.com/dr-ross-greene/2011/10/25/parenting-your-challenging-child", id:"3"}

            ]
        }

        ]
    }
  ];
  return {
    all: function() {
      return helpCategoriesForStep1;
    },
    remove: function(helpCategoryForStep1) {
      helpCategoriesForStep1.splice(helpCategoriesForStep1.indexOf(helpCategoryForStep1), 1);
    },
    get: function(helpCategoriesForStep1Id) {
      for (let i = 0; i < helpCategoriesForStep1.length; i++) {
        if (helpCategoriesForStep1[i].id === parseInt(helpCategoriesForStep1Id)) {
          return helpCategoriesForStep1[i];
        }
      }
      return null;
    },

    getContent: function(helpCategoriesForStep1Id, contentForTopicsId) {
      for (let i = 0; i < helpCategoriesForStep1.length; i++) {
        if (helpCategoriesForStep1[i].id === parseInt(helpCategoriesForStep1Id)) {
          let category = helpCategoriesForStep1[i].topics;
          for (let j = 0; j < category.length; j++) {
            if (category[j].id === contentForTopicsId)
              return category[j];
          }
        }
      }
      return null;
    },
  };
})

.factory('HelpCategoriesStep1Es',function(){
  // First Step help categories and data

  let helpCategoriesForStep1 = [
    {name : "help_category_01" , description : "El ni??o no est?? hablando", image: "category_1.png",id:1,
      topics: [
        {name: "topic_01", description: 'Tal vez el problema no resuelto no estaba libre de conductas desafiantes, o no era espec??fico, o conten??a una teor??a adulta, o estaba "agrupado".', id:"1"},
        {name: "topic_02", title:"help_category_01topic_02", description: "??Tal vez est??s usando la Emergencia B (en el momento en que el ni??o ya est?? molesto) en lugar de Proactive B?", id:"2",
          contents: [
            {name: "content_01", description: "Hacer una cita", link:"http://www.blogtalkradio.com/dr-ross-greene/2011/05/24/parenting-challenging-kids-collaborative-problem-solving-at-home", id:"1"},
            {name: "content_02", description: "Lo mejor que puedes hacer en el momento critico", link: "http://www.blogtalkradio.com/dr-ross-greene/2016/01/25/the-heat-of-the-moment",id:"2"},
            {name: "content_03", description: "Qu?? hacer cuando su hijo est?? en medio de un estallido", link: "http://www.blogtalkradio.com/dr-ross-greene/2015/03/30/the-heat-of-the-moment", id:"3"}
          ]
        },
        {name: "topic_03", description: "??Tal vez est??s usando el Plan A?", id:"3"},
        {name: "topic_04", description: "Tal vez ??l o ella realmente no sabe o no se ha preguntado sobre esto antes", id:"4"},
        {name: "topic_05", title:"help_category_01topic_05", description: "Tal vez el o ella necesita que el problema este dividido en sus componentes:", id:"5",
          contents: [
            {name: "content_01", description: "EJEMPLO: Escribir las respuestas a las preguntas en el cuestionario de ciencias es dif??cil para ti... pero no est??s seguro de por qu??. Pensemos en los diferentes pasos para responder las preguntas en el cuestionario de ciencias. Primero, debes entender lo que esta pidiendo la pregunta. ??Esa parte es complicada para ti? Luego, debes pensar en la respuesta a la pregunta. ??Esa parte es dificil para ti? Luego, debes recordar la respuesta el tiempo suficiente para escribirla. ??Est??s teniendo problemas con esa parte? Ahora deberias escribirla. ??Alg??n problema con esa parte?", id:"1"}
          ]
        },
        {name: "topic_06", description: "Tal vez el/ella necesita tiempo para pensar", id:"6"},
        {name: "topic_07", title:"help_category_01topic_07", description: "Tal vez ??l/ella no encuentra las palabras para decirtelo", id:"7",
          contents: [
            {name: "content_01", description: "Dale a tu hijo los dedos",link:"http://www.blogtalkradio.com/dr-ross-greene/2016/03/14/give-your-kid-the-fingers", id:"1"}
          ]
        },
        {name: "topic_08", description: "Mi hijo no me hablara", id:"8", link:"http://www.blogtalkradio.com/dr-ross-greene/2010/09/21/parenting-challenging-kids-collaborative-problem-s"},
        {name: "topic_09", description: "Hablando acerca de hablar", id:"9", link:"http://www.blogtalkradio.com/dr-ross-greene/2013/05/20/parenting-your-challenging-child"}
      ]
    },

      {name : "help_category_02", description : "Mi hijo es demasiado joven para hacer CPS",image: "category_2.png", id:2,
        topics: [
          {name: "topic_01", description: "Resolviendo problemas en colaboraci??n con ni??os peque??os", id:"1",link:"http://www.blogtalkradio.com/dr-ross-greene/2010/04/27/parenting-challenging-kids-collaborative-problem-s"},
          {name: "topic_02", description: "??Puedes usar el Plan B con ni??os peque??os?", id:"2", link:"http://www.blogtalkradio.com/dr-ross-greene/2011/03/08/parenting-challenging-kids-collaborative-problem-solving-at-home"},
        ]
      },
      {name : "help_category_03", description : "El ni??o o ni??a habl?? pero no s?? qu?? hacer con lo que dijo", image: "category_3.png", id:3,
        topics:[
          {name: "topic_01", title:"help_category_03topic_01", description: "??Estas confundido?", id:"1",
            contents: [
              {name: "content_01", description: 'ESCUCHE CON ATENCI??N Y ACLARE LAS IDEAS - El escuchar con atenci??n b??sicamente involucran reflejar lo que un ni??o dijo y luego animarlo a que brinde informaci??n adicional preguntandole: ??? "??C??mo es eso?" ??? "No lo entiendo del todo" ??? "Estoy confundido" ??? "??Puedes decir m??s sobre eso?" ??? "??Qu?? quieres decir?" El escuchar con atenci??n es tu estrategia de profundizaci??n "preferida"... si no est??s seguro de qu?? estrategia usar o qu?? decir a continuaci??n usa esta estrategia', id:"1"}
            ]
          },
          {name: "topic_02", title:"help_category_03topic_02", description: "??Necesitas m??s informaci??n?", id:"2",
            contents: [
              {name: "content_01", description: 'PREGUNTE ACERCA DE QUI??N, QU??, D??NDE/CU??NDO DEL PROBLEMA SIN RESOLVER - EJEMPLOS: ??? "??Qui??n se estaba burlando de su ropa?" ??? "??Qu?? est?? haciendo para completar el proyecto de ciencia?" ??? "??D??nde est?? mand??ndote Eddie?"', id:"1"},
              {name: "content_02", description: 'PREGUNTE POR QU?? EL PROBLEMA OCURRE BAJO ALGUNAS CONDICIONES Y EN OTRAS NO - EJEMPLO: "Parece que te est?? yendo muy bien en tu grupo de trabajo de matem??ticas... pero no tan bien en tu grupo de trabajo en ciencias sociales... ??qu?? es lo que se interpone en las ciencias sociales?"', id:"3"}
            ]
          },
          {name: "topic_03", title:"help_category_03topic_03", description: "El ni??o dijo algo que es diferente a lo que observ??", id:"3",
            contents: [
              {name: "content_01", description: 'Haga una OBSERVACI??N DIFERENTE: Esto implica hacer una observaci??n que difiera de lo que el ni??o describe sobre una situaci??n en particular, y es la m??s arriesgada (en t??rminos de hacer que el ni??o deje de hablar) de todas las estrategias de profundizaci??n. EJEMPLO: "S?? que est??s diciendo que ??ltimamente no has tenido ninguna dificultad con Chad en el patio de recreo, pero recuerdo algunas veces la semana pasada cuando ustedes estaban teniendo un gran desacuerdo sobre las reglas en el juego de soccer. ??Qu?? crees que estaba pasando ese momento?', id:"1"}
            ]
          },
          {name: "topic_04", title:"help_category_03topic_04", description: "El ni??o dijo algunas cosas que le preocupan, pero creo que hay m??s.", id:"4",
            contents: [
              {name: "content_01", description: 'POSTERGUE (Y HAGA M??S PREGUNTAS ACERCA DE LAS PREOCUPACIONES DEL NI??O) Aqu?? es donde "guarda" algunas inquietudes que el ni??o ya ha expresado para permitir la consideraci??n de otras inquietudes. EJEMPLO: "Entonces, si Timmy no estaba sentado demasiado cerca de ti, y Robbie no hac??a ruidos, y el piso no estaba sucio, y los botones en tus pantalones no te molestaban... ??hay algo m??s que pueda hacer? ??Es dif??cil para ti participar en la reunion de la ma??ana?"', id:"1"}
            ]
          },

          {name: "topic_05", title:"help_category_03topic_05", description: "No estoy seguro de haber terminado con la etapa 1", id:"5",
            contents: [
              {name: "content_01", description: 'RES??MELA Y PREGUNTA POR M??S PREOCUPACIONES - Aqu?? es donde est??s resumiendo las inquietudes que ya has escuchado y luego pregunt??ndote si hay otras preocupaciones que a??n no se hayan discutido. Esta es la estrategia recomendada para usar antes de pasar a la etapa de Definir preocupaciones adultas. EJEMPLO: "D??jame asegurarme de entender todo esto correctamente". Es dif??cil para ti hacer tu hoja de trabajo de ciencias sociales para la tarea porque escribir las respuestas sigue siendo dif??cil para ti... y porque a veces no entiendes la pregunta... y porque la Sra. Langley a??n no ha cubierto el material en la hoja de trabajo. ??Hay algo m??s que sea dif??cil para ti al completar la hoja de trabajo de estudios sociales para la tarea?"', id:"1"},
              {name: "content_02", description: "Cuando hayas resumido y obtenido m??s preocupaciones del ni??o, y el ni??o no tenga ninguna, has terminado con la etapa 1", id:"2"}
            ]
        },
          {name: "topic_06", title:"help_category_03topic_06", description: "No s?? c??mo profundizar", id:"6",
            contents: [
              {name: "content_01", description: "Video de profundizaci??n", video:"drillingVideo", id:"1"},
              {name: "content_02", description: "Profundizaci??n creativa",link:"http://www.blogtalkradio.com/dr-ross-greene/2015/10/05/creative-drilling", id:"2"},
              {name: "content_03", description: "No se puede resolver problemas sin identificar la preocupaci??n de los ni??os",link:"http://www.blogtalkradio.com/dr-ross-greene/2011/10/25/parenting-your-challenging-child", id:"3"}

            ]
        }

        ]
    }
  ];
  return {
    all: function() {
      return helpCategoriesForStep1;
    },
    remove: function(helpCategoryForStep1) {
      helpCategoriesForStep1.splice(helpCategoriesForStep1.indexOf(helpCategoryForStep1), 1);
    },
    get: function(helpCategoriesForStep1Id) {
      for (let i = 0; i < helpCategoriesForStep1.length; i++) {
        if (helpCategoriesForStep1[i].id === parseInt(helpCategoriesForStep1Id)) {
          return helpCategoriesForStep1[i];
        }
      }
      return null;
    },

    getContent: function(helpCategoriesForStep1Id, contentForTopicsId) {
      for (let i = 0; i < helpCategoriesForStep1.length; i++) {
        if (helpCategoriesForStep1[i].id === parseInt(helpCategoriesForStep1Id)) {
          let category = helpCategoriesForStep1[i].topics;
          for (let j = 0; j < category.length; j++) {
            if (category[j].id === contentForTopicsId)
              return category[j];
          }
        }
      }
      return null;
    },
  };
});

