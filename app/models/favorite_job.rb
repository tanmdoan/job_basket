class FavoriteJob < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  validates :job_id, :uniqueness => {:scope => :user}
end
