angular.module('session-module',['bootstrap-growl']).factory('session', function($http,$q,growl) {
	
	function session() {
		
		var self = this;
		
		self.check = function() {
			
			return $q(function(resolve,reject) {
			
				return $http({
				  method: 'GET',
				  url: 'handlers/check-session.php'
				}).then(function mySucces(response) {

					resolve(true);
					
				}, function myError(response) {
					 
					reject(false);
					growl.show('btn btn-danger',{from: 'top', amount: 55},'Session expired please re-login');				
					
				});
			
			});
		
		
		};
		
	};
	
	return new session();
	
});