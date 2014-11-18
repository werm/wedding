angular.module('weddingApp')
	.controller('HomeCtrl', function ($scope, $http, parallaxHelper) {
    $scope.background = parallaxHelper.createAnimator(-0.3, 150, -150);
    $scope.park = parallaxHelper.createAnimator(-0.4, 100, -150);
    $scope.cheek = parallaxHelper.createAnimator(-0.7, 100, -100);
	});