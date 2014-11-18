angular
	.module('weddingApp', [
		'ngAnimate',
		'ui.router',
		'templates',
		'ui.bootstrap',
		'ngFitText',
		'leaflet-directive',
		'duParallax'
	])
	.config(function ($stateProvider, $urlRouterProvider, $locationProvider) {

		/**
		 * Route and States
		 */
		$stateProvider
			.state('home', {
				url: '/',
				templateUrl: 'home.html',
				controller: 'HomeCtrl'
			})

		// default fallback route
		$urlRouterProvider.otherwise('/');

		// enable HTML5 mode for SEO
		$locationProvider.html5Mode(true);

	})

	.run(function(){
		echo.init({
		  offset: $(window).height(),
		  throttle: 100,
		  unload: false,
		  callback: function (element, op) {
		    console.log(element, 'has been', op + 'ed')
		  }
		});
	})