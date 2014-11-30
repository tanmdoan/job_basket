require 'rails_helper'

RSpec.describe FavoriteJob, :type => :model do
  it { should belong_to :job }
  it { should belong_to :user }
end
