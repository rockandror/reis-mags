class PagesController < ApplicationController
  def show
    unlock_landscape
    render template: "pages/#{params[:page]}"
  end

end
