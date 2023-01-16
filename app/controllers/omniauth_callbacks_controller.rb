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

      session[:state] = SecureRandom.urlsafe_base64

      # ユーザーに認証と認可を要求する
      # https://developers.line.biz/ja/docs/line-login/integrate-line-login/#making-an-authorization-request

      base_authorization_url = 'https://access.line.me/oauth2/v2.1/authorize'
      response_type = 'code'
      client_id = ENV['LINE_KEY'] #本番環境では環境変数などに保管する
      redirect_uri = CGI.escape(line_login_api_callback_url)
      state = session[:state]
      bot_prompt='aggressive'
      scope = 'profile%20openid' #ユーザーに付与を依頼する権限

      authorization_url = "#{base_authorization_url}?response_type=#{response_type}&client_id=#{client_id}&redirect_uri=#{redirect_uri}&state=#{state}&bot_prompt=#{bot_prompt}&scope=#{scope}"

    end
    flash[:notice] = "ログインしました"
    redirect_to root_path
  end

  def fake_email(uid, provider)
    "#{auth.uid}-#{auth.provider}@example.com"
  end

end
