OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
  provider: 'github',
  uid: '123',
  info: {
    name: 'Horacio Chavez',
    email: 'horacio@example.com',
    image: 'horacio.png',
    nickname: 'HoracioChavez'
  },
  credentials: {
    token: 'mock_token'
  },
  extra:{
    raw_info: {
      avatar_url: 'http://gravatar.com/horacio.jpg'
    }
  }
})

def login
  VCR.use_cassette('standard_login') do
    raw_login
  end
end

def raw_login
  visit root_path
  click_link_or_button('login')
end
