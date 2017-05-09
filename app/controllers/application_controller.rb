class ApplicationController < ActionController::Base
  before_filter :set_locale

  protect_from_forgery with: :exception

  private

  def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
   @block_landscape = false # If true: rotate smartphone on Landscape show a message.
   @font_awesome = true # If true: If true use a FontAwesome else use custom svg icon
  end

end
