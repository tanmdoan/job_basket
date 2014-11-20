class Connection < ActiveRecord::Base
  has_many :company_connections
  has_many :companies, through: :company_connections
end
