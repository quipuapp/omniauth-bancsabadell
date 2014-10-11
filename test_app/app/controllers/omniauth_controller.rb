class OmniauthController < ApplicationController
  def bancsabadell
    puts "--------------------"
    puts "Callback received. Getting the token..."
    session[:token] = request.env["omniauth.auth"].credentials.token
    puts "Token is #{session[:token]}. Try this:"
    puts "https://developers.bancsabadell.com/ResourcesServerBS/oauthservices/v1.0.0/cuentasvista?access_token=#{session[:token]}"
    puts "--------------------"

    redirect_to root_path
  end
end
