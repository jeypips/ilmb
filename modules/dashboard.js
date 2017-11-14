<<<<<<< HEAD
angular.module('dashboard-module',['bootstrap-modal','bootstrap-growl','flot-module','flotAge-module','flotService-module']).factory('form', function($compile,$timeout,$http,bootstrapModal,growl,flot,flotAge,flotService) {

	
	function form() {
=======
angular.module('dashboard-module',['bootstrap-modal']).factory('dashboard', function($compile,$timeout,$http) {
	
	function dashboard() {
>>>>>>> refs/remotes/origin/sly
		
		var self = this;
		
		var loading = '<div class="col-sm-offset-4 col-sm-8"><button type="button" class="btn btn-inverse" title="Loading" disabled><i class="fa fa-spin fa-refresh"></i>&nbsp; Please wait...</button></div>';
		
		self.data = function(scope) { // initialize data	
<<<<<<< HEAD
				
			scope.personal_infos = [];
			
			$timeout(function() {
				
					$http({
					  method: 'POST',
					  url: 'handlers/charts.php'
					}).then(function mySucces(response) {
						
						scope.personal_infos = angular.copy(response.data);
						
					}, function myError(response) {
						 
					  // error
						
					});
					
				},100);
			
			$timeout(function() {
				
					console.log(scope.personal_infos);					
					// pie chart
					flot.pie(scope.perfsonal_infos);
					flotAge.pie(scope.perfsonal_infos);
					flotService.pie(scope.perfsonal_infos);
				
			},1000);
			
			$timeout(function() {
				
				$('#x_content').html(loading);
				$('#x_content').load('dashboard/charts.html',function() {
					$timeout(function() { $compile($('#x_content')[0])(scope); },400);
				});
				
			},300);
		
		};
		
	};
	
	return new form();
=======
		
			$http({
				method: 'POST',
				url: 'api/charts/dashboard'				
			}).then(function success(response) {
				
				scope.dashboard = response.data;
				console.log(scope.dashboard);
				pies(scope.dashboard);
				
			}, function error(response) {

			});
			
			/*
			** Pie Charts
			*/
			function pies(dashboard) {
						
				!function($) {
					"use strict";

					var ChartJs = function() {};

					ChartJs.prototype.respChart = function respChart(selector,type,data, options) {
						// get selector by context
						var ctx = selector.get(0).getContext("2d");
						// pointing parent container to make chart js inherit its width
						var container = $(selector).parent();

						// enable resizing matter
						$(window).resize( generateChart );

						// this function produce the responsive Chart JS
						function generateChart(){
							// make chart width fit with its container
							var ww = selector.attr('width', $(container).width() );
							switch(type){
								case 'Line':
									new Chart(ctx).Line(data, options);
									break;
								case 'Doughnut':
									new Chart(ctx).Doughnut(data, options);
									break;
								case 'Pie':
									new Chart(ctx).Pie(data, options);
									break;
								case 'Bar':
									new Chart(ctx).Bar(data, options);
									break;
								case 'Radar':
									new Chart(ctx).Radar(data, options);
									break;
								case 'PolarArea':
									new Chart(ctx).PolarArea(data, options);
									break;
							}
							// Initiate new chart or Redraw

						};
						// run function - render chart at first load
						generateChart();
					},
					
					// init
					ChartJs.prototype.init = function() {

						var gender = [
							{
								value: dashboard.gender.male,
								color:"#5d9cec",
								label: "Male"
							},
							{
								value : dashboard.gender.female,
								color : "#5fbeaa",
								label: "Female"
							}
						];
						this.respChart($("#pie-gender"),'Pie',gender);
						
						var category = [
							{
								value: dashboard.category.indigents,
								color:"#E74C3C",
								label: "Indigents"
							},
							{
								value : dashboard.category.senior_citizens,
								color : "#DAF7A6",
								label: "Senior Citizens"
							},
							{
								value : dashboard.category.children,
								color : "#FFC300",
								label: "Children"
							},
							{
								value : dashboard.category.walkins,
								color : "#5499C7",
								label: "Walk-ins"
							}				
						];
						this.respChart($("#pie-category"),'Pie',category);

						var ages = [];
						angular.forEach(dashboard.ages, function(age,i) {
							ages.push({value: age.count, color: age.color, label: age.label});
						});
						this.respChart($("#pie-ages"),'Pie',ages);						
						
						var services = [];
						angular.forEach(dashboard.services, function(service,i) {
							services.push({value: service.count, color: '#'+service.color, label: service.label});
						});
						this.respChart($("#pie-services"),'Pie',services);
						
						var encoders = [];
						angular.forEach(dashboard.encoders, function(encoder,i) {
							encoders.push({value: encoder.count, color: encoder.color, label: encoder.label});
						});
						this.respChart($("#pie-encoders"),'Pie',encoders);					

					},
					$.ChartJs = new ChartJs, $.ChartJs.Constructor = ChartJs

				}(window.jQuery),

				//initializing 
				function($) {
					"use strict";
					$.ChartJs.init()
				}(window.jQuery);			
			
			};
		
		};
	
	};
	
	return new dashboard();
>>>>>>> refs/remotes/origin/sly
	
});