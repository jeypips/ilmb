var app = angular.module('services',['toggle-fullscreen','account-module','service-module']);

app.controller('servicesCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});