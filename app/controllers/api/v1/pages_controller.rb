class Api::V1::PagesController < ApplicationController
  def create
    url_error_message = "Invalid URL - URL must include prefix of http:// or https://"
    @url = params[:url]

    if !(@url =~ /https?:\/\/[\S]+/)
      render json: { errors: url_error_message }, status: 422
      return
    end

  end

  def index
    @pages = Page.order(:created_at)
  end

end
