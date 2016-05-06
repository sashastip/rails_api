'use strict';

angular.module('rails_api')
  .controller('AuthController', ['$scope', '$location', '$http', 'Auth', function($scope, $location, $http, Auth){
    //auth
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
         $location.path('/');
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
            $location.path('/');
        });
      }

      $scope.logout = function () {
        var config = {
          headers: {
              'X-HTTP-Method-Override': 'DELETE'
          }
        };
        // Log in user...
        // ...
        Auth.logout(config).then(function(oldUser) {
          //console.log("oldUser");
             //alert(oldUser.name + "you're signed out now.");
        }, function(error) {
          console.log(error);
        });

        $scope.$on('devise:logout', function(event, oldCurrentUser) {
          
        });

        $location.path('/');
      }
  }]);