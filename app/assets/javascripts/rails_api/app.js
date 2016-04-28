'use strict';

var rails_api = angular.module('rails_api', ['rails', 'ngAnimate', 'ui.bootstrap', 'ui.router', 'templates']);

rails_api.config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', { url: '/', templateUrl: '../home/index.html', controller: 'HomeController' });
    //.state('tournaments', { url: '/tournaments', templateUrl: 'tournaments/index.html', controller: 'TournamentCtrl' })
    //.state('tournaments/new', { url: '/tournaments/new', templateUrl: 'tournaments/new.html', controller: 'TournamentCtrl' })
    //.state('auth_login', { url: '/auth/login', templateUrl: 'auth/login.html', controller: 'AuthCtrl' })
    //.state('auth_signup', { url: '/auth/signup', templateUrl: 'auth/signup.html', controller: 'AuthCtrl' })
    //.state('auth_logout', { url: '/auth/logout', templateUrl: '', controller: 'AuthCtrl' });

   $urlRouterProvider.otherwise('/');
}]);