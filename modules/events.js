angular.module('event-module',['ui.bootstrap','bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
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

			scope.event = {};
			scope.event.id = 0;

			scope.events = []; // list
			
			$http({
				method: 'POST',
				url: 'api/suggestions/municipalities'
			}).then(function mySucces(response) {
				
				scope.municipalities = response.data;
				
			},function myError(response) {
				
			});
			
		
		};

		function validate(scope) {
			
			var controls = scope.formHolder.event.$$controls;
			
			angular.forEach(controls,function(elem,i) {
				
				if (elem.$$attr.$attr.required) elem.$touched = elem.$invalid;
									
			});
			return scope.formHolder.event.$invalid;
			
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
		
		self.event = function(scope,row) {			
		
			scope.event = {};
			scope.event.id = 0;
			mode(scope,row);
			$('#x_content').html(loading);
			$('#x_content').load('forms/event.html',function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },200);
			});
	
			if (row != null) {		
				
				if (scope.$id > 2) scope = scope.$parent;				
				$http({
				  method: 'POST',
				  url: 'handlers/event-view.php',
				  data: {id: row.id}
				}).then(function mySucces(response) {
					
					angular.copy(response.data, scope.event);
					scope.event.date = new Date(response.data.date);
					
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
			  url: 'handlers/event-save.php',
			  data: {event: scope.event}
			}).then(function mySucces(response) {					
				
				if (scope.event.id == 0) scope.event.id = response.data;
				mode(scope,scope.event);
				
				
			}, function myError(response) {
				 
			  // error
				
			});			
			
		};		
		
		self.delete = function(scope,row) {
			
		var onOk = function() {
			
			if (scope.$id > 2) scope = scope.$parent;			
			
			$http({
			  method: 'POST',
			  url: 'handlers/event-delete.php',
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
			scope.event = {};
			scope.event.id = 0;			
			$http({
			  method: 'POST',
			  url: 'handlers/event-list.php',
			}).then(function mySucces(response) {
				
				scope.events = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});
			//

			$('#x_content').html(loading);
			$('#x_content').load('lists/events.html', function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },100);								
				// instantiate datable
				$timeout(function() {
					$('#event').DataTable({
						"ordering": false
					});	

					var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

					elems.forEach(function(elem) {
						var switchery = new Switchery(elem, { size: 'small' });
						elem.onchange = function(e) {
						  self.toggleActive(scope,e);
						};					  
					});				
				},200);
				
			});
		};
		
		self.municipalitySelect = function($item, scope) {
			
			scope.event.town = $item;
			
		};
		
		self.toggleActive = function(scope,e) {

			$http({
			  method: 'POST',
			  url: 'handlers/activate-event.php',
			  data: {id: e.target.dataset.eventId, checked: e.target.checked}
			}).then(function mySucces(response) {
				
				self.list(scope);
				
			}, function myError(response) {
				 
			  // error
				
			});
			
		};
	
	};
	
	return new form();
	
});