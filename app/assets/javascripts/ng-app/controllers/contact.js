'use strict';

angular.module('weddingApp')
  .controller('ContactCtrl', function ($scope, $http) {
    $scope.messageSuccess = false;
    $scope.sending = false;
    $scope.sendEmail = function(contact){
      $scope.sending = true;
      $http.post('/api/contact', contact)
        .success(function(d){
          console.log(d)
          if(d.result === 'success'){
            $scope.messageSuccess = true;
            $scope.sending = false;
          }
        });
    };
  });