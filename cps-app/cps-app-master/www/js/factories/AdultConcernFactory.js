angular.module('starter.services').factory('AdultConcernFactory', function($cordovaSQLite) {

  function getAdultsConcerns(unsolvedProblemId,callback){
    let adultConcerns = [];
    let query ="SELECT * FROM adults_concerns WHERE unsolved_problem_id = ?";
    $cordovaSQLite.execute(db,query,[unsolvedProblemId]).then(function(result) {
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          adultConcerns.push(rows.item(i));
        }
      }
      callback(adultConcerns);
      },function(err){
        console.log(err.message);
      });
  }

  function insertAdultsConcern(adultsConcern){
    let query ="INSERT INTO adults_concerns(description,unsolved_problem_id) VALUES (?,?)";
    $cordovaSQLite.execute(db,query,[adultsConcern.description,adultsConcern.unsolvedProblemId]);
  }

  function updateAdultsConcern(adultsConcern){
    let query = "";
    query = "UPDATE adults_concerns SET description = ? where id = ?";
    return $cordovaSQLite.execute(db, query, [adultsConcern.description, adultsConcern.id]);
  }

  function deleteAdultsConcern(adultsConcern, callback) {
    let query = "DELETE FROM adults_concerns where id = ?";
    $cordovaSQLite.execute(db, query, [adultsConcern.id]).then(function(res) {
        callback();
    }, function (err) {
        console.error(err);
    });
  }

  function getPair(callback){
    let pair = [];
    let query ="SELECT * FROM pair_childConcerntoadultConcern";
    $cordovaSQLite.execute(db,query)
    .then(function(result) {
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          pair.push(rows.item(i));
        }
      }
      callback(pair);
    },function(err) {
        console.log(err.message);
    });

   }

   function deleteAdultsConcernPair(pair) {
     let query = "DELETE FROM pair_childConcerntoadultConcern where id = ?";
     $cordovaSQLite.execute(db, query, [pair.id]);
   }

   function updateAdultsConcernPair(adultsConcernDescription,pair){
     let query = "UPDATE pair_childConcerntoadultConcern SET description = ?, description2 = ? where id = ?";
     $cordovaSQLite.execute(db, query, [pair.description,adultsConcernDescription, pair.id]);
    }

  return {
    all: function(unsolvedProblemId,callback) {
      getAdultsConcerns(unsolvedProblemId,callback);
    },
    insert: function(adultsConcern) {
      insertAdultsConcern(adultsConcern);
    },
    update: function(adultsConcern) {
      updateAdultsConcern(adultsConcern);
    },
    updateAdultsConcernPair: function(adultsConcernDescription,pair) {
       updateAdultsConcernPair(adultsConcernDescription,pair);
    },
    getPair: function(callback) {
       getPair(callback);
    },
    deleteAdultsConcernPair: function(pair) {
       deleteAdultsConcernPair(pair);
    },
    delete: function(adultsConcern, callback) {
      deleteAdultsConcern(adultsConcern, callback);
    }
  };
});
