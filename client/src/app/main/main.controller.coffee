angular.module "client"
  .controller "MainCtrl", ($scope) ->
    toastr.options =
      positionClass: 'toast-bottom-right'
