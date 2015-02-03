angular.module "client", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ng-token-auth']
  .config ($stateProvider, $urlRouterProvider) ->
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
      .state "main.sign_up_or_log_in",
        url: "users/sign_up_or_log_in",
        templateUrl: "app/users/sign_up_or_log_in.html",
        controller: "UsersCtrl"


    $urlRouterProvider.otherwise '/'

