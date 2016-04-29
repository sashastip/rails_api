angular.module('rails_api')
  .controller('HomeController', ['$scope', '$http', function($scope, $http){
    $http.get('/api/v1/users')
      .then(function(res){
        $scope.users = res.data;
      })
  }])