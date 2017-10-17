require 'rails_helper'

feature "Admin sesions", :type => :feature do

  let!(:user) { create(:user, role: :user) }
  let!(:user_admin) { create(:user, role: :admin) }

  scenario 'Normal users cannot be logged into backend' do
    visit rails_admin_path

    fill_in 'Adreça electrònica', with: user.email
    fill_in 'Contrasenya', with: user.password
    click_button 'Iniciar sessió'

    expect(page).to have_content " Has d'iniciar sessió o bé registrar-te abans de continuar."
  end

  scenario 'Only admin users can login into backend' do
    visit rails_admin_path

    fill_in 'Adreça electrònica', with: user_admin.email
    fill_in 'Contrasenya', with: "qwer1234"
    click_button 'Iniciar sessió'

    expect(page).to have_content "Sessió iniciada correctament."
  end

  scenario 'Admin user can logout from backend' do
    visit rails_admin_path

    fill_in 'Adreça electrònica', with: user_admin.email
    fill_in 'Contrasenya', with: "qwer1234"
    click_button 'Iniciar sessió'

    click_on 'Desconectar'
  end

end
