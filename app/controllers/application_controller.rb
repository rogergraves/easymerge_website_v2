class ApplicationController < ActionController::Base
  after_action -> { flash.discard }, if: -> { request.xhr? }
end
