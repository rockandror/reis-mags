require 'rails_helper'

feature "Admin passwords", :type => :feature do

  let!(:user) { create(:user, role: :admin) }

  scenario 'Admin users can forget his passwords' do
    visit new_user_session_path

    expect(page).to have_link "Has oblidat la teva contrasenya?"
  end

  scenario "should show error when email not found" do
    visit new_user_password_path

    fill_in "user_email", with: "unexistent@email.com"
    click_on "Enviar les instruccions per a regenerar la meva contrasenya"

    expect(page).to have_content "no s'ha trobat"
  end

  scenario 'Admin users can request passwords reset' do
    ActionMailer::Base.deliveries = []
    visit new_user_password_path

    fill_in "user_email", with: user.email
    click_on "Enviar les instruccions per a regenerar la meva contrasenya"

    expect(page).to have_content "En breu rebràs un correu electrònic amb instruccions sobre com restablir la teva contrasenya."
    expect(ActionMailer::Base.deliveries.count).to eq(1)
  end

  scenario 'Admin users can receive an email with reset instructions' do
    ActionMailer::Base.deliveries = []
    visit new_user_password_path

    fill_in "user_email", with: user.email
    click_on "Enviar les instruccions per a regenerar la meva contrasenya"

    expect(ActionMailer::Base.deliveries.count).to eq(1)
  end

  scenario 'Admin users can edit his passwords throught email link' do
    visit new_user_password_path

    fill_in "user_email", with: user.email
    click_on "Enviar les instruccions per a regenerar la meva contrasenya"


  end


end
