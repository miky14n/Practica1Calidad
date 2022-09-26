angular.module('starter.services').factory('PossibleSolutionFactory', function($cordovaSQLite) {

  function findSolution(solutionId, callback){
    let solution = {};
    let query ="SELECT * FROM solutions WHERE id = ?";
    $cordovaSQLite.execute(db,query,[solutionId]).then(function(result){
      solution = result.rows.item(0);
      callback(solution);
    },function(err){
      console.log(err.message);
    });
  }

  function getAllSolutions(unsolvedProblemId, callback) {
    let solutions = [];
    let query ="SELECT * FROM solutions WHERE unsolved_problem_id = ?";
    $cordovaSQLite.execute(db,query,[unsolvedProblemId]).then(function(result) {
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          solutions.push(rows.item(i));
        }
        callback(solutions);
      }
    },function(err){
      console.log(err.message);
    });
    return solutions;
  }


  function insertSolution(solution){
    let query ="INSERT INTO solutions(description,unsolved_problem_id,rating) VALUES (?,?,?)";
    $cordovaSQLite.execute(db,query,[solution.description, solution.unsolvedProblemId, solution.rating]);
  }


  function updateSolution(solution){
    let query = "UPDATE solutions SET description = ? where id = ?";
    $cordovaSQLite.execute(db, query, [solution.description, solution.id]);
  }

  function deleteSolution(solutionId, callback){
    let query = "DELETE FROM solutions where id = ?";
    $cordovaSQLite.execute(db, query, [solutionId]).then(function(res) {
        callback();
    }, function (err) {console.error(err);});
  }

  function getCommentsForSolution(solutionId,callback){
    let comments = [];
    let query ="SELECT * FROM solution_comments WHERE solution_id = ? ORDER BY commented_at DESC";
    $cordovaSQLite.execute(db,query,[solutionId]).then(function(result){
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          comments.push(rows.item(i));
        }
        callback(comments);
      }
    },function(err){console.log(err.message);});
  }
  function getAllPairs(solutionId, callback) {
    let pairs = [];
    let query ="SELECT * FROM pair_childConcerntoadultConcern WHERE solution_id = ?";
    $cordovaSQLite.execute(db,query,[solutionId]).then(function(result) {
      let rows = result.rows;
      if(rows.length) {
        for(let i=0; i < rows.length; i++){
          pairs.push(rows.item(i));
        }
        callback(pairs);
      }
    },function(err){console.log(err.message);});
  }
  function insertComment(comment){
    let now = new Date();
    let query ="INSERT INTO solution_comments(description,commented_at,solution_id) VALUES (?,?,?)";
    $cordovaSQLite.execute(db,query,[comment.description,now,comment.solutionId]);
  }


  function insertPair(pair,solution_id){

    let query ="INSERT INTO pair_childConcerntoadultConcern(description,description2,solution_id) VALUES (?,?,?)";
    $cordovaSQLite.execute(db,query,[pair.description,pair.description2,solution_id]);
  }

  function getLast(unsolved_problem_id,callback){
    let solutionLate = [];
    let query ="SELECT *FROM solutions WHERE unsolved_problem_id = ? ORDER BY id DESC LIMIT 1";
  $cordovaSQLite.execute(db,query,[unsolved_problem_id]).then(function(result) {
      let rows = result.rows;
         if(rows.length) {
           let solutionLate = result.rows.item(0);
           callback(solutionLate);
       }
    },function(err){
      console.log(err.message);
    });
  }


 function findPair(solutionId, callback){
    let pair=null;
    let query ="SELECT * FROM pair_childConcerntoadultConcern WHERE solution_id = ?";
    $cordovaSQLite.execute(db,query,[solutionId]).then(function(result){
      let rows = result.rows;
         if(rows.length) {
         pair = result.rows.item(0);
       }
       callback(pair);

    },function(err){
      console.log(err.message);

    });

  }

  function updateComment(comment){
    let query = "UPDATE solution_comments SET description = ? where id = ?";
    $cordovaSQLite.execute(db, query, [comment.description, comment.id]);
  }
  function updatePair(pair){
     let query = "UPDATE pair_childConcerntoadultConcern SET description = ?, description2 = ? where id = ?";
     $cordovaSQLite.execute(db, query, [pair.description,pair.description2, pair.id]);
   }


  return {
    all: function(unsolvedProblemId, callback){
      getAllSolutions(unsolvedProblemId, callback);
    },
    allPairs: function(solutionId, callback){
      getAllPairs(solutionId, callback);
    },
    insert: function(possibleSolution){
      insertSolution(possibleSolution);
    },
    update: function(possibleSolution){
      updateSolution(possibleSolution);
    },
    delete:  function(solutionId, callback){
      deleteSolution(solutionId, callback);
    },
    find: function(solutionId, callback){
      findSolution(solutionId, callback);
    },
    getComments: function(solutionId, callback){
      getCommentsForSolution(solutionId, callback);
    },
    insertComment: function(comment){
      insertComment(comment);
    },
    insertPair: function(pair,solution_id){
      insertPair(pair,solution_id);
    },
    findPair: function(solutionId,callback){
      findPair(solutionId,callback);
    },
    updatePair: function(pair){
      updatePair(pair);
    },
    getLast: function(solution,callback){
      getLast(solution,callback);
    },
    updateComment: function(comment){
      updateComment(comment);
    }
  };
});
