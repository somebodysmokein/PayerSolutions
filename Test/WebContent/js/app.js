var myApp = angular.module('myApp', 
  ['ngRoute']);

myApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.
    when('/panel', {
      templateUrl: 'views/panel.html',
      controller: 'PanelController'
    }).
    otherwise({
      redirectTo: '/login'
    });
}]);