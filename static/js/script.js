(function() {
	'use-strict';

	angular.module('toDo', []).controller('MainCtrl', ['$scope',
		function($scope) {
			$scope.dict = {};

			$scope.addItem = function(taskname) {
				// make list element
				$scope.li = angular.element('<li/>');
				$scope.li.attr("class", "list-group-item list-group-item-action");
				$scope.li.attr("ng-click", "crossOut()")
				// append to DOM
				$scope.li.append(document.createTextNode(taskname));
				var list = document.getElementById("list");
				angular.element(list).append($scope.li);
				// reset input field
				$scope.taskname = '';
			};

			$scope.crossOut = function() {
				var text = document.querySelector("li").value;
				document.querySelector("li").value = text.strike();
			};
			/*@HostListener('click', ['$event.target'])
			onClick(target) {
				console.log("hello");
			}*/
		}
	]);
}());
