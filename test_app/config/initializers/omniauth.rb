Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bancsabadell,
    CUSTOM_CONFIG['banc_sabadell']['consumer_key'],
    CUSTOM_CONFIG['banc_sabadell']['consumer_secret']
end
