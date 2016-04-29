'use strict';

angular.module('rails_api')
  .controller('AuthController', ['$scope', '$location', function($scope, $location){
  	$scope.user = {email: null, password: null};

    var config = {
        headers: {
          'X-HTTP-Method-Override': 'POST'
        }
     };

     $scope.login = function () {
       console.log($scope.user);
       $scope.email = user.email;
       $scope.password = user.password;
     }
  }]);