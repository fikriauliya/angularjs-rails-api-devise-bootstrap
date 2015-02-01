angular.module "client"
  .controller "PasswordsCtrl", ($scope, $auth) ->
    $scope.requestPasswordReset = (passwordResetForm) ->
      $auth.requestPasswordReset(passwordResetForm).then((resp) ->
        $scope.info = "Your password reset link has been sent to your email"
        $scope.errors = []
        $scope.registrationForm = {}
        return
      ).catch (resp) ->
        $scope.info = ""
        $scope.errors = resp.data.errors
        return
      return