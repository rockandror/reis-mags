require "rails_helper"

describe "shared/_nav.html.erb" do

  it "should contain root link" do
    allow(controller).
      to receive(:params).
        and_return({controller: 'pages', action: 'show', page: 'home'})
    render :partial => "shared/nav.html.erb"

    expect(rendered).to have_link "", href: root_path
  end

  describe "language_switcher" do
    it "should render only other available languages in dropdown" do
      I18n.locale = :en
      allow(controller).
        to receive(:params).
          and_return({controller: 'pages', action: 'show', page: 'home'})
      render :partial => "shared/nav.html.erb"

      expect(rendered).to have_selector "#language_switcher.dropdown-menu a[data-locale='es']"
      expect(rendered).not_to have_selector "#language_switcher.dropdown-menu a[data-locale='en']"
      I18n.locale = I18n.default_locale
    end
  end
end