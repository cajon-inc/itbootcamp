class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def line; basic_action end

  private
  def basic_action
    @omniauth = request.env["omniauth.auth"]
    if @omniauth.present?
      @profile = User.find_or_initialize_by(provider: @omniauth["provider"], uid: @omniauth["uid"])
      if @profile.email.blank?
        email = @omniauth["info"]["email"] ? @omniauth["info"]["email"] : "#{@omniauth["uid"]}-#{@omniauth["provider"]}@example.com"
        @profile = current_user || User.create!(provider: @omniauth["provider"], uid: @omniauth["uid"], email: email, name: @omniauth["info"]["name"], password: Devise.friendly_token[0, 20])
      end

      url = 'https://api.line.me/oauth2/v2.1/token'
      redirect_uri = line_login_api_callback_url

      options = {
        headers: {
          'Content-Type' => 'application/x-www-form-urlencoded'
        },
        body: {
          grant_type: 'authorization_code',
          code: code,
          redirect_uri: redirect_uri,
          client_id: ENV['LINE_KEY'], # 本番環境では環境変数などに保管
          client_secret: ENV['LINE_SECRET'] # 本番環境では環境変数などに保管
        }
      }
      
      @profile.set_values(@omniauth)
      sign_in(:user, @profile)
    end
    flash[:notice] = "ログインしました"
    redirect_to root_path
  end

  def fake_email(uid, provider)
    "#{auth.uid}-#{auth.provider}@example.com"
  end

end
