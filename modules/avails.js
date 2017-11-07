angular.module('avail-module',['ui.bootstrap','bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
	function form() {
		
		var self = this;
		
		var loading = '<div class="col-sm-offset-4 col-sm-8"><button type="button" class="btn btn-inverse" title="Loading" disabled><i class="fa fa-spin fa-refresh"></i>&nbsp; Please wait...</button></div>';
		
		self.data = function(scope) { // initialize data	
		
			scope.controls = {
				ok: {
					btn: false,
					label: 'Save'
				},
				cancel: {
					btn: false,
					label: 'Cancel'
				},
			};			

			scope.service_availed = {};
			scope.service_availed.id = 0;

			scope.service_availeds = []; // list
			
		
		};

		function validate(scope) {
			
			var controls = scope.formHolder.service_availed.$$controls;
			
			angular.forEach(controls,function(elem,i) {
				
				if (elem.$$attr.$attr.required) elem.$touched = elem.$invalid;
									
			});
			return scope.formHolder.service_availed.$invalid;
			
		};
		
		function mode(scope,row) {
			
			if (row == null) {
				scope.controls.ok.label = 'Save';
				scope.controls.ok.btn = false;
				scope.controls.cancel.label = 'Cancel';
				scope.controls.cancel.btn = false;
			} else {
				scope.controls.ok.label = 'Update';
				scope.controls.ok.btn = true;
				scope.controls.cancel.label = 'Close';
				scope.controls.cancel.btn = false;				
			}
			
		};
		
		self.list = function(scope) {
			
			scope.service_availed = {};
			scope.service_availed.id = 0;			
			$http({
			  method: 'POST',
			  url: 'handlers/avail-list.php',
			}).then(function mySucces(response) {
				
				scope.service_availeds = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});
			//

			$('#x_content').html(loading);
			$('#x_content').load('lists/avails.html', function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },100);	
				
			});
			
		};
	
	};
	
	return new form();
	
});