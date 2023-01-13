class ArticlesController < ApplicationController
  require "httpclient"
  require 'microcms'

  def index
    @articles = microcms
  end

  def show
    @articles = microcms
    @article = microcms(params[:id])
  end

  private
    def microcms(id=nil)
      client = HTTPClient.new
      response = client.get(
        "https://ibc.microcms.io/api/v1/articles/#{id}",
        header: { "X-MICROCMS-API-KEY": Rails.application.credentials.microcms[:api_key]}
      )

      raise ActiveRecord::RecordNotFound if response.status == 404
      raise Exception unless response.status == 200

      JSON.parse(response.body, symbolize_names: true)
    end
end

