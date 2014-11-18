'use strict';

angular.module('weddingApp')
  .controller('TimelineCtrl', function ($scope, $http, $sce) {
    $scope.story_content = function(html) {
      return $sce.trustAsHtml(html);
    }
    $scope.stories = [];
    $http.get('/api/stories')
    .success(function(stories){
      $scope.stories = stories;
    });

});