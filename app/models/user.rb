class User < ActiveRecord::Base
  has_many :updates, as: :news
  has_many :jobs, through: :favorite_jobs
  has_many :favorite_jobs

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid      = auth["uid"]
      user.name     = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.image    = auth["extra"]["raw_info"]["avatar_url"]
    end
  end

  def first_name
    name.split(' ').first
  end
end
