angular.module "client"
  .controller "SessionsCtrl", ($scope, $auth) ->
    $scope.submitLogin = (loginForm) ->
      $auth.submitLogin(loginForm).then((resp) ->
        $scope.info = "Successfully logged in"
        $scope.errors = []
        $scope.loginForm = {}
        return
      ).catch (resp) ->
        $scope.info = ""
        $scope.errors = resp.errors
        return
      return