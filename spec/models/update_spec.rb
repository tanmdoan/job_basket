require "rails_helper"

describe Update, type: :model do
  it { should have_attribute(:body) }
  it { should belong_to(:company) }
end
