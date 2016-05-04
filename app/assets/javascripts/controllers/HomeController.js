angular.module('rails_api')
  .controller('HomeController', ['$scope', '$http', function($scope, $http){
    $http.get('/users.json')
      .then(function(res){
        $scope.users = res.data;
      })
  }])