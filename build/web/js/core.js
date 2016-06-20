var app = angular.module('evalApp', []);

app.controller('TicketController', function($scope, $http) {
    $scope.agents = null;
    $scope.selectedAgent = null;

    $http({
        method: 'GET',
        url: '/webresources/Fetcher/getAgents'
    }).then(function successCallback(response) {
        $scope.agents = response.data.agents;
    }, function errorCallback(response) {
        // called asynchronously if an error occurs
        // or server returns response with an error status.
    });
});


