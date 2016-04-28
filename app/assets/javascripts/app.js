'use strict';

angular.module('rails_api', ['rails', 'ngAnimate', 'ui.bootstrap', 'ui.router', 'templates'])

  .config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
    $stateProvider
      // <-- HOME PAGE --> //
      .state('home', { url: '/', templateUrl: 'home/index.html', controller: 'HomeController' });
      // <-- -------- --> //

      // <-- Devise -->//
      .state('auth_login', { url: '/auth/login', templateUrl: 'auth/login.html', controller: 'AuthCtrl' })
      .state('auth_signup', { url: '/auth/signup', templateUrl: 'auth/signup.html', controller: 'AuthCtrl' })
      .state('auth_logout', { url: '/auth/logout', templateUrl: '', controller: 'AuthCtrl' });
      // <-- ----- -->//

      //.state('tournaments', { url: '/tournaments', templateUrl: 'tournaments/index.html', controller: 'TournamentCtrl' })
      //.state('tournaments/new', { url: '/tournaments/new', templateUrl: 'tournaments/new.html', controller: 'TournamentCtrl' })
      

      $urlRouterProvider.otherwise('/');
}]);