angular.module('flot-module',[]).factory('flot',function() {
	
	function flot() {
		
		var self = this;
		
		self.pie = function(personal_infos) {
			
			! function($) {
				"use strict";

				var FlotChart = function() {
					this.$body = $("body")
					this.$realData = []
				};

				//creates Pie Chart
				FlotChart.prototype.createPieGraph = function(selector, labels, datas, colors) {
					var data = [{
						label : labels[0],
						data : datas[0]
					}, {
						label : labels[1],
						data : datas[1]
					}, {
						label : labels[2],
						data : datas[2]
					}];
					var options = {
						series : {
							pie : {
								show : true
							}
						},
						legend : {
							show : false
						},
						grid : {
							hoverable : true,
							clickable : true
							
						},
						colors : colors,
						tooltip : true,
						tooltipOpts : {

							content : "<span style='color: #000!important;'>%s, %p.0%</span>"

						}
					};

					$.plot($(selector), data, options);
				}

				//initializing various charts and components
				FlotChart.prototype.init = function() {

					//Pie graph data
					var pielabels = ["Female", "Male"];
					var datas = ["2163", "2861"];
					var colors = ["#5fbeaa", "#6c85bd"];
					this.createPieGraph("#pie-chart #pie-chart-container", pielabels, datas, colors);

				}

				//init flotchart
				$.FlotChart = new FlotChart, $.FlotChart.Constructor =
				FlotChart

			}(window.jQuery),

			//initializing flotchart
			function($) {
				"use strict";
				$.FlotChart.init()
			}(window.jQuery);			
			
		};
		
	};
	
	return new flot();
	
});