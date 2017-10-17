module EditionAdmin
extend ActiveSupport::Concern

  included do

    rails_admin do

      navigation_icon 'fa fa-list'

      list do
        field :name
      end

      edit do
        field :name
      end

    end

  end

end
