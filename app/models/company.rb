class Company < ActiveRecord::Base
  has_many :updates, as: :news
  has_many :jobs
  has_many :company_connections
  has_many :connections, through: :company_connections
end
