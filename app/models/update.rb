class Update < ActiveRecord::Base
  belongs_to :news, polymorphic: true
end
