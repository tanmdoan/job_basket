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

  within(".btn-github") do
    click_link_or_button('Connect with Github')
  end
end
