require "rails_helper"
RSpec.describe Company, :type => :model do
 it { should have_attribute(:description) }
 it { should have_attribute(:name) }
 it { should have_attribute(:team_size) }
 it { should have_many :updates }
 it { should have_many(:jobs) }
 it { should have_many(:connections) }
end
