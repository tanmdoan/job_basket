def github_mock_auth
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
    }
  })
end

def login
  visit root_path
  github_mock_auth
  click_link('Connect with Github')
end
