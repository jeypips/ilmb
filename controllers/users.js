var app = angular.module('users',['toggle-fullscreen','account-module','user-module']);

app.controller('usersCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});