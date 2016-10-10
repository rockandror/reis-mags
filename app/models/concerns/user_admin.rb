module UserAdmin
extend ActiveSupport::Concern

  included do

    rails_admin do

      navigation_icon 'fa fa-users'

    end

  end

end 