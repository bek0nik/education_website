Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['361123313948615'], ENV['4df96223d2c848558d52d9d72e010de1']
  provider :vkontakte, ENV['API_KEY'], ENV['API_SECRET']
end
