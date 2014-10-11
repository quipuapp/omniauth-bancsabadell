Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bancsabadell,
    CUSTOM_CONFIG['banc_sabadell']['client_id'],
    CUSTOM_CONFIG['banc_sabadell']['client_secret']
end
