'use strict';

angular.module('rails_api')
  .controller('AuthController', ['$scope', '$location', '$http', 'Auth', function($scope, $location, $http, Auth){
  	var config = {
      headers: {
        'X-HTTP-Memthod-Override': 'POST'
      }
    }

     $scope.login = function () {
       Auth.login($scope.user, config).then(function(user) {
         console.log(user);
       }, function(error) {
       });

       $scope.$on('devise:login', function(event, currentUser){

       });

       $scope.$on('devise:new-session', function(event, currentUser) {
            // user logged in by Auth.login({...})
        });
     }

     $scope.signup = function () {
      Auth.register($scope.user, config).then(function(registeredUser) {
            console.log(registeredUser); // => {id: 1, ect: '...'}
        }, function(error) {
            // Registration failed...
        });

        $scope.$on('devise:new-registration', function(event, user) {
            // ...
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