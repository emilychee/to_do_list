(function() {
	'use-strict';

	angular.module('toDo', []).controller('MainCtrl', ['$scope',
		function($scope) {

			$scope.addItem = function(taskname) {
				$scope.li = angular.element('<li/>');
				$scope.li.append(document.createTextNode(taskname));
				var list = document.getElementById("list");
				angular.element(list).append($scope.li);
			};
		}
	]);
}());
