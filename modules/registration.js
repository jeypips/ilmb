angular.module('registration-module',['bootstrap-modal','bootstrap-growl']).factory('form', function($compile,$timeout,$http,bootstrapModal,growl) {

	
	function form() {
		
		var self = this;
		
		var loading = '<div class="col-sm-offset-4 col-sm-8"><button type="button" class="btn btn-inverse" title="Loading" disabled><i class="fa fa-spin fa-refresh"></i>&nbsp; Please wait...</button></div>';
		
		self.data = function(scope) { // initialize data	
				
			$timeout(function() {
				
				$('#x_content').html(loading);
				$('#x_content').load('forms/registration.html',function() {
					$timeout(function() { $compile($('#x_content')[0])(scope); },500);
				});
				
			},300);
		
		};
		
	};
	
	return new form();
	
});