var app = angular.module('registration',['toggle-fullscreen','registration-module']);

app.controller('registrationCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	
});