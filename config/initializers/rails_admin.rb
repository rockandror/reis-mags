RailsAdmin.config do |config|
  config.current_user_method(&:current_user)

  config.authorize_with do |controller|
    if current_user && current_user.owner?
      sign_out @user
      redirect_to main_app.new_user_session_url, alert: "Acceso denegado!"
    end    
    warden.authenticate! scope: :user
  end

  config.included_models = ['User']

  config.compact_show_view = false

end