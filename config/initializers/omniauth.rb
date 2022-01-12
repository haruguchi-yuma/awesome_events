Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "ef1af8974e9c5394d47d", "bd70c49b00ebb3de0a472430853f0b0a23180350"
  else
    provider :github,
      Rails.application.credentials.github[:client_id]
      Rails.application.credentials.github[:client_secret]
  end
end
