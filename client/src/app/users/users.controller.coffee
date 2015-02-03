angular.module "client"
  .controller "UsersCtrl", ($scope, $auth, $state) ->
    $scope.submitLogin = (loginForm) ->
      $auth.submitLogin(loginForm).then((resp) ->
        toastr.success("Welcome back!")
        $state.go("main")
        return
      ).catch (resp) ->
        $scope.errors = resp.errors
        return
      return

    $scope.submitRegistration = (registrationForm) ->
      $auth.submitRegistration(registrationForm).then((resp) ->
        toastr.success("Your account has been created")
        $state.go("main")
        return
      ).catch (resp) ->
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
