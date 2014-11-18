'use strict';

angular.module('weddingApp')
  .controller('HotelsMapCtrl', function ($scope, leafletData, SmoothScroll) {

    $scope.showParking = false;

    angular.extend($scope, {
      center: {},
      defaults: {
        tileLayer: 'http://a{s}.acetate.geoiq.com/tiles/acetate-hillshading/{z}/{x}/{y}.png',
        scrollWheelZoom: false
      },
      markers: {}
    });

    $scope.center = {
      lat: 39.951076,
      lng: -83.001306,
      zoom: 13
    };

    $scope.markers = {
      venue: {
        lat: 39.951076,
        lng: -83.001306,
        icon: {
          iconUrl: 'assets/venuePin.png',
          shadowUrl: 'assets/pinShadow.png',
          iconSize:     [26, 36],
          shadowSize:   [23, 12],
          iconAnchor:   [13, 36],
          shadowAnchor: [12, 7]
        }
      },
      holidayInn: {
        lat: 39.958724,
        lng: -82.994785,
        message: 'Holiday Inn',
        shown: false
      },
      courtYard: {
        lat: 39.966107,
        lng: -83.002952,
        message: 'Courtyard by Mariott'
      }
    };

    $scope.$on('leafletDirectiveMarker.popupopen', function() {
      // Args will contain the marker name and other relevant information
    });

    $scope.$on('leafletDirectiveMarker.popupclose', function() {
      // Args will contain the marker name and other relevant information
      SmoothScroll.scrollTo('hotel_details_sep');
      $scope.center = {
        lat: 39.951076,
        lng: -83.001306,
        zoom: 13
      };
    });

    $scope.showCy = function(el){
      $scope.markers.courtYard.focus = true;
      $scope.center = { 
        lat: $scope.markers.courtYard.lat,
        lng: $scope.markers.courtYard.lng,
        zoom: 15
      };
      SmoothScroll.scrollTo(el);
    };
    $scope.showHi = function(el){
      $scope.markers.holidayInn.focus = true;
      $scope.center = { 
        lat: $scope.markers.holidayInn.lat,
        lng: $scope.markers.holidayInn.lng,
        zoom: 15
      };
      SmoothScroll.scrollTo(el);
    };

    $scope.getMarkerData = function(){
      $scope.markers.holidayInn.shown = true;
      leafletData.getMarkers().then(function (markers) {
        markers.holidayInn._popup._isOpen = true;
      });
    };

});