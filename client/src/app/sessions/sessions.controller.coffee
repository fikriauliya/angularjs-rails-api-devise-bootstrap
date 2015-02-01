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
    $scope.logout = () ->
      $auth.signOut()
        .then (resp) ->
          console.log("Logged out")
          return
        .catch (resp) -> 
          console.log(resp)
          return