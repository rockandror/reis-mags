module StreetAdmin
extend ActiveSupport::Concern

  included do

    rails_admin do

      navigation_icon 'fa fa-road'

      list do
        field :name
        field :position
      end

      edit do
        field :name
        field :position
      end
      
    end

  end

end
