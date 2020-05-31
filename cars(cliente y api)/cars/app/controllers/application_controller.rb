class ApplicationController < ActionController::Base
	USERS = { "matias" => "123" }
 
  before_action :authenticate
 
  private
 
    def authenticate
      authenticate_or_request_with_http_digest do |username|
        USERS[username]
      end
    end

    def record_not_found
    	render plain: "404 Not found", status: 404
    end
end
