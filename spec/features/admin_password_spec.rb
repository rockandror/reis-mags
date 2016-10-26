require 'rails_helper'

feature "Admin passwords", :type => :feature do

  let!(:user) { create(:user, role: :admin) }

  scenario 'Admin users can forget his passwords' do
    visit new_user_session_path

    expect(page).to have_link "¿Ha olvidado su contraseña?"
  end

  scenario 'Admin users can request passwords reset' do
    ActionMailer::Base.deliveries = []
    visit new_user_password_path

    fill_in "user_email", with: user.email
    click_on "Envíeme las instrucciones para resetear mi contraseña"

    expect(page).to have_content "Recibirás un correo con instrucciones sobre cómo resetear tu contraseña en unos pocos minutos."
    expect(ActionMailer::Base.deliveries.count).to eq(1)
  end

  scenario 'Admin users can receive an email with reset instructions' do
    ActionMailer::Base.deliveries = []
    visit new_user_password_path

    fill_in "user_email", with: user.email
    click_on "Envíeme las instrucciones para resetear mi contraseña"

    expect(ActionMailer::Base.deliveries.count).to eq(1)
  end     

  scenario 'Admin users can edit his passwords throught email link' do
    visit new_user_password_path
    
    fill_in "user_email", with: user.email
    click_on "Envíeme las instrucciones para resetear mi contraseña"

    expect(page).to have_content "Recibirás un correo con instrucciones sobre cómo resetear tu contraseña en unos pocos minutos."
  end  


end