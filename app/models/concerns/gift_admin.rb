module GiftAdmin
extend ActiveSupport::Concern

  included do

    rails_admin do

      navigation_icon 'fa fa-gift'

      list do
        scopes [:inscripcions]
        sort_by "street_position"
        field :street do
          sortable false
        end
        field :name do
          sortable false
        end
        field :street_number do
          sortable false
        end
        field :edition
      end

      edit do
        field :name
        field :street
        field :street_number
        field :edition
      end

    end

  end

end
