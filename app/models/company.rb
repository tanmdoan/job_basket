class Company < ActiveRecord::Base
  has_many :updates
  has_many :jobs
  has_many :company_connections
  has_many :connections, through: :company_connections
end
