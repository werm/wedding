angular.module('weddingApp')
  .controller('PeopleCtrl', function($scope, $http, $sce) {
    $scope.person_description = function(html) {
      return $sce.trustAsHtml(html);
    }
    $scope.people = [];
    $http.get('/api/people')
      .success(function(people){
        $scope.people = people;
      })
  });