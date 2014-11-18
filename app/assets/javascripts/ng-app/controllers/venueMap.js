'use strict';

angular.module('weddingApp')
  .controller('VenueMapCtrl', function ($scope) {

      angular.extend($scope, {
        center: {
          lat: 39.951076,
          lng: -83.001306,
          zoom: 14
        },
        defaults: {
          tileLayer: 'http://a{s}.acetate.geoiq.com/tiles/acetate-hillshading/{z}/{x}/{y}.png',
          maxZoom: 14,
          scrollWheelZoom: false
        },
        markers: {
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
          }
        }
      });

});