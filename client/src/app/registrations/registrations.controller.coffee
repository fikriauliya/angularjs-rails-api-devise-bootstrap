angular.module "client"
  .controller "RegistrationsCtrl", ($scope, $auth) ->
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