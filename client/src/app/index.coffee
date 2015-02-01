angular.module "client", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ui.bootstrap', 'ng-token-auth']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "main",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"
      .state "main.registrations",
        abstract: true,
        template: "<div ui-view></div>"
      .state "main.registrations.new",
        url: "registrations/new",
        templateUrl: "app/registrations/new.html",
        controller: "RegistrationsCtrl"
      .state "main.sessions",
        abstract: true,
        template: "<div ui-view></div>"
      .state "main.sessions.new",
        url: "sessions/new",
        templateUrl: "app/sessions/new.html",
        controller: "SessionsCtrl"

    $urlRouterProvider.otherwise '/'

