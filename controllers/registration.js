var app = angular.module('registration',['toggle-fullscreen','registration-module','account-module']);

app.controller('registrationCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});