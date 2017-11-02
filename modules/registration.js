angular.module('registration-module',['ui.bootstrap','bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
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
			
			$http({
				method: 'POST',
				url: 'api/suggestions/barangays'
			}).then(function mySucces(response) {
				
				scope.barangays = response.data;
				
			},function myError(response) {
				
			});
			
			$http({
				method: 'POST',
				url: 'api/suggestions/municipalities'
			}).then(function mySucces(response) {
				
				scope.municipalities = response.data;
				
			},function myError(response) {
				
			});			

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
		
		self.barangaySelect = function($item, scope) {
			
			scope.personal_info.address_barangay = $item;
			
		};
		
		self.municipalitySelect = function($item, scope) {
			
			scope.personal_info.address_municipality = $item;
			
		};
		
		self.print = function(scope,personal_info) {
			
			$http({
			  method: 'POST',
			  url: 'handlers/print-registration.php',
			  data: {id: personal_info.id}
			}).then(function mySucces(response) {
				
				print(scope,response.data);
				
			}, function myError(response) {
				 
			  // error
				
			});			
			
		};
		
		function print(scope,personal_info) {
			console.log(scope.personal_info);
			
			var doc = new jsPDF();
			
			
			doc.addPage();
			
			doc.text(40, 98, 'Family:');
			doc.output('dataurlnewwindow');
		};
	};
	
	return new form();
	
});