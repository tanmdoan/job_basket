require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:jobs).through(:favorite_jobs) }
  it { should have_many :favorite_jobs }
end
