'use strict';

angular.module('rails_api')
  .controller('AuthController', ['$scope', '$location', '$http', function($scope, $location, $http){
  	$scope.user = {email: null, password: null};

     $scope.login = function () {
      $http({
        method  : 'POST',
        url     : '/users',
        data    : $scope.user
      })
        .success(function(data) {
          if (data.errors) {
            $scope.errorName = data.errors.name;
            $scope.errorUserName = data.errors.username;
            $scope.errorEmail = data.errors.email;
          } else {
            $scope.message = data.message;
          }
        });
     }

     $scope.signup = function () {
      $http({
        method  : 'POST',
        url     : '/users',
        data    : $scope.user
      })
        .success(function(data) {
          if (data.errors) {
            $scope.errorName = data.errors.name;
            $scope.errorUserName = data.errors.username;
            $scope.errorEmail = data.errors.email;
          } else {
            $scope.message = data.message;
          }
        });
      }

      $scope.lo = function () {
      $http({
        method  : 'POST',
        url     : '/users/sign_up',
        data    : $scope.user
      })
        .success(function(data) {
          if (data.errors) {
            $scope.errorName = data.errors.name;
            $scope.errorUserName = data.errors.username;
            $scope.errorEmail = data.errors.email;
          } else {
            $scope.message = data.message;
          }
        });
      }
  }]);