class RegistrationsController < Devise::RegistrationsController
  protected

  def show
  email = @user.email
  end

  def after_sign_up_path_for(resource)
    '/registrations/ok' # Or :prefix_to_your_route
  end
end
