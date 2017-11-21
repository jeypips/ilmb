angular.module('attendance-module',['ui.bootstrap','bootstrap-modal']).factory('form', function($compile,$timeout,$http,bootstrapModal) {
	
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
			$('#x_content').load('lists/attendance.html', function() {
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
			  url: 'api/attendance/profile',
			  data: {id: id}
			}).then(function mySucces(response) {
				
				scope.profile = response.data;
				
			}, function myError(response) {
				 
			  // error
				
			});

			$('#attendance').html(loading);
			$('#attendance').load('forms/attendance.html',function() {
				$timeout(function() {
					$compile($('#attendance')[0])(scope);
				},200);
				$timeout(function() {
					
					var elem = document.querySelector('.js-switch');
					var colorCode = $(elem).data('colorCode');
					var init = new Switchery(elem, { size: 'small',  color: '#'+colorCode, secondaryColor: '#'+colorCode });
					
					elem.onchange = function(e) {
						self.toggleActive(scope,e);
					};					
					
				},300);
			});			
			
		};
		
		function getColorCode(scope,id) {
			
			// scope.profile.services.
			
		};
		
		self.toggleActive = function(scope,e) {

			$http({
			  method: 'POST',
			  url: 'handlers/attendance-update.php',
			  data: {id: e.target.dataset.attendanceId, checked: e.target.checked}
			}).then(function mySucces(response) {
				
				scope.profile.attendance = response.data.attendance;
				
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