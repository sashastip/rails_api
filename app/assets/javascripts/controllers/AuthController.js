'use strict';

angular.module('rails_api')
  .controller('AuthController', ['$scope', '$location', '$http', function($scope, $location, $http){
  	$scope.user = {email: null, password: null};

     $scope.login = function () {
      $http({
        method  : 'POST',
        url     : '/users/sign_in',
        data    : $scope.user,
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
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
        url     : '/users/sign_up',
        data    : $scope.user,
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
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