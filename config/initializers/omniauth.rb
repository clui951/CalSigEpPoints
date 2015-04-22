OmniAuth.config.logger = Rails.logger 

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :google_oauth2, '886997338194-4e39g1heo3nb61drsltve3chafbclcel.apps.googleusercontent.com', 'aYkJqULgDEBXQMHhmsPOVOgH', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}} 
end