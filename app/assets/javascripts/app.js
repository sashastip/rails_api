'use strict';

angular.module('rails_api', ['rails', 'ui.bootstrap', 'ui.router', 'templates'])

  .config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function ($stateProvider, $urlRouterProvider, $locationProvider) {
    $stateProvider
      // <-- HOME PAGE --> //
      .state('home', { url: '/', templateUrl: 'home/index.html', controller: 'HomeController' })
      // <-- -------- --> //

      // <-- Devise -->//
      .state('auth_login', { url: '/auth/login', templateUrl: 'auth/login.html', controller: 'AuthController' })
      .state('auth_signup', { url: '/auth/signup', templateUrl: 'auth/signup.html', controller: 'AuthController' })
      .state('auth_logout', { url: '/auth/logout', templateUrl: '', controller: 'AuthController' });
      // <-- ----- -->//

      $locationProvider.html5Mode({
      	enabled: true,
        requireBase: false
      });
      
      $urlRouterProvider.otherwise('/');
      
}]);