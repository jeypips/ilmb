angular.module('dashboard-module',['bootstrap-modal','bootstrap-growl','flot-module','flotAge-module','flotService-module']).factory('form', function($compile,$timeout,$http,bootstrapModal,growl,flot,flotAge,flotService) {

	
	function form() {
		
		var self = this;
		
		var loading = '<div class="col-sm-offset-4 col-sm-8"><button type="button" class="btn btn-inverse" title="Loading" disabled><i class="fa fa-spin fa-refresh"></i>&nbsp; Please wait...</button></div>';
		
		self.data = function(scope) { // initialize data	
				
			scope.personal_infos = [];
			
			/* $timeout(function() {
				
					$http({
					  method: 'POST',
					  url: 'handlers/consolidated-sectors.php'
					}).then(function mySucces(response) {
						
						scope.consolidated = angular.copy(response.data);
						
					}, function myError(response) {
						 
					  // error
						
					});
					
				},100); */
			
			$timeout(function() {
				
					console.log();					
					// pie chart
					flot.pie();
					flotAge.pie();
					flotService.pie();
				
			},200);
			
			  
			$timeout(function() {
				
				$('#x_content').html(loading);
				$('#x_content').load('dashboard/charts.html',function() {
					$timeout(function() { $compile($('#x_content')[0])(scope); },400);
				});
				
			},300);
		
		};
		
	};
	
	return new form();
	
});