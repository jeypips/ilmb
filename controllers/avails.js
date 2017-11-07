var app = angular.module('avails',['toggle-fullscreen','account-module','avail-module']);

app.controller('availsCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});