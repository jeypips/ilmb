<<<<<<< HEAD
var app = angular.module('dashboard',['toggle-fullscreen','account-module','account-module','dashboard-module']);

app.controller('dashboardCtrl',function($scope,fullscreen,form) {
=======
var app = angular.module('dashboard',['toggle-fullscreen','account-module','dashboard-module']);

app.controller('dashboardCtrl',function($scope,fullscreen,dashboard) {
>>>>>>> refs/remotes/origin/sly
	
	$scope.formHolder = {};
	$scope.views = {};
	
<<<<<<< HEAD
	form.data($scope);
	
	$scope.form = form;
	
=======
	dashboard.data($scope);
>>>>>>> refs/remotes/origin/sly

});