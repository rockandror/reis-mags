module GiftAdmin
extend ActiveSupport::Concern

  included do

    rails_admin do

      navigation_icon 'fa fa-gift'

      list do
        field :name
        field :street
        field :street_number
      end

      edit do
        field :name
        field :street
        field :street_number
      end

    end

  end

end
