require 'rails_helper'

RSpec.describe JobsController, :type => :controller do
  let!(:job) { FactoryGirl.create(:job) }

  it 'respond with 200 for index' do
    get :index
    expect(response.status).to eq(200)
  end

  it 'respond with 200 for show' do
    get :show, id: job.id
    expect(response.status).to eq(200)
  end

  it 'respond with 404 for show if job does not exsist' do
    get :show, id: (job.id + 1)
    expect(response.status).to eq(404)
  end

  
end
