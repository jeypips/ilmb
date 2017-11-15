var app = angular.module('dashboard',['toggle-fullscreen','account-module','dashboard-module']);

app.controller('dashboardCtrl',function($scope,fullscreen,dashboard) {
	
	$scope.formHolder = {};
	$scope.views = {};
	

	dashboard.data($scope);

});