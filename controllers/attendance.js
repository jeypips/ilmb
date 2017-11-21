var app = angular.module('attendance',['toggle-fullscreen','account-module','attendance-module']);

app.controller('attendanceCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});