(function() {
	'use-strict';

	angular.module('toDo', []).controller('MainCtrl', ['$scope',
		function($scope) {
			$scope.doList = [];

			$scope.addItem = function(taskname) {
				$scope.doList.push({name: $scope.taskname, done: false});
				$scope.taskname = '';
			};

			$scope.crossOut = function() {
				// TODO
			};
		}
	]);
}());
