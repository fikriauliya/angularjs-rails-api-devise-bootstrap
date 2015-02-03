angular.module "client"
  .controller "NavbarCtrl", ($scope, $auth, $state) ->
    $scope.signOut = () ->
      $auth.signOut()
        .then (resp) ->
          toastr.success("You are logged out")
          $state.go("main")
        .catch (resp) ->
          toastr.error(resp.data.errors)

