angular.module('registration-module',['bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
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

			scope.personal_info = {};
			scope.personal_info.id = 0;

			scope.personal_infos = []; // list

		};

		function validate(scope) {
			
			var controls = scope.formHolder.personal_info.$$controls;
			
			angular.forEach(controls,function(elem,i) {
				
				if (elem.$$attr.$attr.required) elem.$touched = elem.$invalid;
									
			});
			return scope.formHolder.personal_info.$invalid;
			
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
		
		self.registration = function(scope,row) {			
		
			scope.personal_info = {};
			scope.personal_info.id = 0;
			mode(scope,row);
			$('#x_content').html(loading);
			$('#x_content').load('forms/registration.html',function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },200);
			});
	
			if (row != null) {		
				
				if (scope.$id > 2) scope = scope.$parent;				
				$http({
				  method: 'POST',
				  url: 'handlers/registration-view.php',
				  data: {id: row.id}
				}).then(function mySucces(response) {
					
					angular.copy(response.data, scope.personal_info);
					
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
			  url: 'handlers/registration-save.php',
			  data: {personal_info: scope.personal_info}
			}).then(function mySucces(response) {					
				
				if (scope.personal_info.id == 0) scope.personal_info.id = response.data;
				mode(scope,scope.personal_info);
				// $timeout(function() { self.list(scope); },200);
				
			}, function myError(response) {
				 
			  // error
				
			});			
			
		};		
		
		self.delete = function(scope,row) {
			
		var onOk = function() {
			
			if (scope.$id > 2) scope = scope.$parent;			
			
			$http({
			  method: 'POST',
			  url: 'handlers/registration-delete.php',
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
			scope.personal_info = {};
			scope.personal_info.id = 0;			
			$http({
			  method: 'POST',
			  url: 'handlers/registration-list.php',
			}).then(function mySucces(response) {
				
				scope.personal_infos = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});
			//

			$('#x_content').html(loading);
			$('#x_content').load('lists/registration.html', function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },100);								
				// instantiate datable
				$timeout(function() {
					$('#personal').DataTable({
						"ordering": false
					});	
				},200);
				
			});
		};
		
		function imageExists(image_url){

			var http = new XMLHttpRequest();

			http.open('HEAD', image_url, false);
			http.send();

			return http.status != 404;

		};
	};
	
	return new form();
	
});