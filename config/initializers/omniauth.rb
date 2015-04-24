OmniAuth.config.logger = Rails.logger 

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :google_oauth2, '886997338194-pevc1mgffb48t259pm50s8ciue6f1810.apps.googleusercontent.com', 'DzvP_oVg0b0ObaaUbI0ZnrfA', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}} 
end