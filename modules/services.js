angular.module('service-module',['ui.bootstrap','bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
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

			scope.service = {};
			scope.service.id = 0;

			scope.services = []; // list
			
		
		};

		function validate(scope) {
			
			var controls = scope.formHolder.service.$$controls;
			
			angular.forEach(controls,function(elem,i) {
				
				if (elem.$$attr.$attr.required) elem.$touched = elem.$invalid;
									
			});
			return scope.formHolder.service.$invalid;
			
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
		
		self.service = function(scope,row) {			
		
			scope.service = {};
			scope.service.id = 0;
			mode(scope,row);
			$('#x_content').html(loading);
			$('#x_content').load('forms/service.html',function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },200);
			});
	
			if (row != null) {		
				
				if (scope.$id > 2) scope = scope.$parent;				
				$http({
				  method: 'POST',
				  url: 'handlers/service-view.php',
				  data: {id: row.id}
				}).then(function mySucces(response) {
					
					angular.copy(response.data, scope.service);
					
				}, function myError(response) {
					 
				  // error
					
				});					
			};
			
		};
		
		
		self.edit = function(scope) {
			
			scope.controls.ok.btn = !scope.controls.ok.btn;
			
		};
		
		self.save = function(scope) {			
			
			if (validate(scope)) return;
			
			$http({
			  method: 'POST',
			  url: 'handlers/service-save.php',
			  data: {service: scope.service}
			}).then(function mySucces(response) {					
				
				if (scope.service.id == 0) scope.service.id = response.data;
				mode(scope,scope.service);
				
				
			}, function myError(response) {
				 
			  // error
				
			});			
			
		};		
		
		self.delete = function(scope,row) {
			
		var onOk = function() {
			
			if (scope.$id > 2) scope = scope.$parent;			
			
			$http({
			  method: 'POST',
			  url: 'handlers/service-delete.php',
			  data: {id: [row.id]}
			}).then(function mySucces(response) {

				self.list(scope);
				
			}, function myError(response) {
				 
			  // error
				
			});

		};

		bootstrapModal.confirm(scope,'Confirmation','Are you sure you want to delete this record?',onOk,function() {});
			
		};		
		
		
		self.list = function(scope) {
			
			// load list
			scope.mode = 'list';
			scope.service = {};
			scope.service.id = 0;			
			$http({
			  method: 'POST',
			  url: 'handlers/service-list.php',
			}).then(function mySucces(response) {
				
				scope.services = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});
			//

			$('#x_content').html(loading);
			$('#x_content').load('lists/services.html', function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },100);								
				// instantiate datable
				$timeout(function() {
					$('#service').DataTable({
						"ordering": false
					});	
				},200);
				
			});
			
		};
	
	};
	
	return new form();
	
});