class CompanyConnection < ActiveRecord::Base
  belongs_to :company
  belongs_to :connection
end
