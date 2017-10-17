RailsAdmin.config do |config|
  config.current_user_method(&:current_user)

  config.authorize_with do |controller|
    if current_user && current_user.user?
      sign_out @user
      redirect_to main_app.new_user_session_url, alert: "Acceso denegado!"
    end
    warden.authenticate! scope: :user
  end

  config.included_models = ['User', 'Street', 'Gift']

  config.compact_show_view = false

  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export
    history_index
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app

    # Add the nestable action for configured models
    nestable
  end

  config.model 'Street' do
    nestable_list true
  end
end
