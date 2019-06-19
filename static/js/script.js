(function() {
	'use-strict';

	angular.module('toDo', []).controller('MainCtrl', ['$scope',
		function($scope) {

			$scope.addItem = function(taskname) {
				// make list element
				$scope.li = angular.element('<li/>');
				$scope.li.attr("class", "list-group-item list-group-item-action");
				$scope.li.attr("id", "")
				// append to DOM
				$scope.li.append(document.createTextNode(taskname));
				var list = document.getElementById("list");
				angular.element(list).append($scope.li);
				// reset input field
				document.getElementById("input").value = '';
			};
		}
	]);
}());
