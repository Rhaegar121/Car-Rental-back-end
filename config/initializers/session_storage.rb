if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://carrental-9ijm.onrender.com"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end