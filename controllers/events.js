var app = angular.module('events',['toggle-fullscreen','account-module','event-module']);

app.controller('eventsCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	form.list($scope);
	
	$scope.form = form;
	
});