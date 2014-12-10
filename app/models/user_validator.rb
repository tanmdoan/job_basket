class UserValidator
  def member?(nickname)
    response = Faraday.get(membership_url_for(nickname))
    data = JSON.parse(response.body)
    data.detect{|org| member_organizations.include?(org['id'])}
  end

  def membership_url_for(nickname)
    "https://api.github.com/users/#{nickname}/orgs?client_id=#{Rails.application.secrets.github_key}&client_secret=#{Rails.application.secrets.github_secret}"
  end

  def member_organizations
    [
      7934292   # turingschool
    ]
  end
end
