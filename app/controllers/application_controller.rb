require "application_responder"

class ApplicationController < ActionController::API
  self.responder = ApplicationResponder
  respond_to :html

  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::RespondWith
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
end
