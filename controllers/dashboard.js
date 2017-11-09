var app = angular.module('dashboard',['toggle-fullscreen','account-module','account-module','dashboard-module']);

app.controller('dashboardCtrl',function($scope,fullscreen,form) {
	
	$scope.formHolder = {};
	$scope.views = {};
	
	form.data($scope);
	
	$scope.form = form;
	

});