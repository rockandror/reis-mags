class ApplicationController < ActionController::Base
  before_filter :set_locale, :lock_landscape, :set_icon_font
  protect_from_forgery with: :exception

  private

  def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
  end

  def lock_landscape
    @lock_landscape = true
  end

  def unlock_landscape
    @lock_landscape = false
  end

  def set_icon_font
    @font_awesome = true
  end

  protected
    def after_sign_in_path_for(resource)
      rails_admin_path
    end
end
