class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @role=current_user.role
    if current_user.role == 'admin'
      redirect_to rails_admin_path
    end
  end
end
