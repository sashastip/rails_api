'use strict';

var app = angular.module('rails_api');
  app.controller('HomeController', ['$scope', '$http', function($scope, $http){
  	$http.get('/posts.json')
  	.then(function(res){
  	  $scope.posts = res.data;
  	})
  }])