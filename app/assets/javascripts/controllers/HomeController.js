'use strict';

angular.module('rails_api')
  .controller('HomeController', ['$scope', '$http', function($scope, $http){
  	$http.get('/posts.json')
  	.then(function(res){
  	  $scope.posts = res.data;
  	})
  }])