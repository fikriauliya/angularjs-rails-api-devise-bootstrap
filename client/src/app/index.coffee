angular.module "client", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ng-token-auth']
  .config ($stateProvider, $urlRouterProvider, $authProvider) ->
    $authProvider.configure
      apiUrl: ''
      authProviderPaths:
        facebook: '/auth/facebook'

    $stateProvider
      .state "main",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

      .state "main.password_reset",
        url: "users/password_reset",
        templateUrl: "app/users/password_reset.html",
        controller: "PasswordsCtrl"
      .state "main.password_update",
        url: "users/password_update",
        templateUrl: "app/users/password_update.html",
        controller: "UsersCtrl"
      .state "main.register",
        url: "users/register",
        templateUrl: "app/users/register.html",
        controller: "UsersCtrl"
      .state "main.log_in",
        url: "users/log_in",
        templateUrl: "app/users/log_in.html",
        controller: "UsersCtrl"


    $urlRouterProvider.otherwise '/'

