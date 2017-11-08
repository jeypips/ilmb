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
			
			scope.profile = {};
			scope.views.profile = "";
		
		};
		
		self.list = function(scope) {

			scope.views.profile = "";		
		
			$('#x_content').html(loading);
			$('#x_content').load('lists/avails.html', function() {
				$timeout(function() { $compile($('#x_content')[0])(scope); },100);
				profiles(scope);
			});
			
		};
		
		function profiles(scope) {	
			
			/*
			**  Profile Suggestions
			*/
			$timeout(function() {
				$http({
				  method: 'POST',
				  url: 'api/suggestions/profiles'
				}).then(function mySucces(response) {
					
					scope.profileSuggestions = angular.copy(response.data);
					
				}, function myError(response) {
					 
				  // error
					
				});
			},200);				

		};		
		
		function profile(scope,id) {
			
			scope.views.profile = "";			
			
			$http({
			  method: 'POST',
			  url: 'api/services/profile',
			  data: {id: id}
			}).then(function mySucces(response) {
				
				scope.profile = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});

			$('#services-availed').html(loading);
			$('#services-availed').load('forms/services-availed.html',function() {
				$timeout(function() {
					$compile($('#services-availed')[0])(scope);
				},200);
				$timeout(function() {
					
					var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

					elems.forEach(function(elem) {
						var switchery = new Switchery(elem, { size: 'small',  color: '#7c8bc7', secondaryColor: '#7c8bc7' });
						elem.onchange = function(e) {
						  self.toggleActive(scope,e);
						};					  
					});
					
				},300);
			});			
			
		};
		
		self.toggleActive = function(scope,e) {

			$http({
			  method: 'POST',
			  url: 'handlers/avail-service.php',
			  data: {id: e.target.dataset.availedId, checked: e.target.checked}
			}).then(function mySucces(response) {
				
				
			}, function myError(response) {
				 
			  // error
				
			});
			
		};		
		
		self.profileSelect = function($item, scope) {
			
			profile(scope,$item.id);
			
		};
	
	};
	
	return new form();
	
});