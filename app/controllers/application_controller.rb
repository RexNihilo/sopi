class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :require_login

  def index
    current_user.courses
  end
end
