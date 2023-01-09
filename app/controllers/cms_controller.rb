class CmsController < ApplicationController
  require "httpclient"

  def index
    @results = get_microcms

    # return  render template: 'errors/error_404', status: 404, content_type: 'text/html' unless @result.present?
  end

  def show
    @result = get_microcms(params[:id],params[:draftKey])

    return  render template: 'errors/error_404', status: 404, content_type: 'text/html' unless @result.present?
  end

  private

  def get_microcms(id=nil,draft_key=nil)
    client = HTTPClient.new()
    res = client.get(
        # 控えておいたエンドポイントを設定
        "https://ibc.microcms.io/api/v1/articles#{id.present? ? "/#{id}" : ""}", # <= 個別取得と一覧取得でパスが変わるのに対応させる
        { draftKey: draft_key}, # <=下書きの内容を取得する為のキー情報
        {"X-API-KEY" => "b9d192868c61415e9a4413a2b4aad2822e0f"}
      )

    return nil unless res.status == 200

    JSON.parse(res.body, symbolize_names: true)
  end
end
