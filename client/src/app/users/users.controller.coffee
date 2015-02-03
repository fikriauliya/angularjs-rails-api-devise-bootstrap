angular.module "client"
  .controller "UsersCtrl", ($scope, $auth) ->
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

    $scope.submitRegistration = (registrationForm) ->
      $auth.submitRegistration(registrationForm).then((resp) ->
        $scope.info = "Your account has been created"
        $scope.errors = []
        $scope.registrationForm = {}
        return
      ).catch (resp) ->
        $scope.info = ""
        $scope.errors = resp.data.errors
        return
      return

    $scope.requestPasswordReset = (passwordResetForm) ->
      $auth.requestPasswordReset(passwordResetForm)
        .then (resp) ->
          $scope.info = "Your password reset link has been sent to your email"
          $scope.errors = []
          $scope.registrationForm = {}
          return
        .catch (resp) ->
          $scope.info = ""
          $scope.errors = resp.data.errors
          return
        return

    $scope.updatePassword = (changePasswordForm) ->
      $auth.updatePassword($scope.changePasswordForm)
        .then (resp) ->
          $scope.info = "Password updated"
          $scope.errors = []
          return
        .catch (resp) ->
          $scope.info = ""
          $scope.errors = resp.data.errors
          return
