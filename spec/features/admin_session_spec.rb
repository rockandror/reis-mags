require 'rails_helper'

feature "Admin sesions", :type => :feature do

  let!(:user_owner) { create(:user, role: :owner) }
  let!(:user_admin) { create(:user, role: :admin) }

  scenario 'Owner users cannot loged into backend' do
    visit rails_admin_path

    fill_in 'Correo electrónico', with: user_owner.email
    fill_in 'Contraseña', with: user_owner.password
    click_button 'Log in'

    expect(page).to have_content "Tienes que iniciar sesión o registrarte para poder continuar."
  end

  scenario 'Only admin users can login into backend' do
    visit rails_admin_path

    fill_in 'Correo electrónico', with: user_admin.email
    fill_in 'Contraseña', with: "qwer1234"
    click_button 'Log in'

    expect(page).to have_content "Sesión iniciada."
  end

  scenario 'Admin user can logut from backend' do
    visit rails_admin_path

    fill_in 'Correo electrónico', with: user_admin.email
    fill_in 'Contraseña', with: "qwer1234"
    click_button 'Log in'

    click_on 'Desconectar'
  end

end