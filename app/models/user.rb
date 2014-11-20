class User < ActiveRecord::Base
  has_many :updates, as: :news
end
