class Api::V1::PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @page = Page.new(page_params)

    if @page.url_is_invalid?
      url_error_message = "Invalid URL - URL must include prefix of http:// or https://"
      render json: { errors: url_error_message }, status: 422
      return
    else
      if @page.scrape_and_save!
        @page
      else
        error = "Sorry, failed to scrape and save..."
        render json: {errors: error}
      end
    end
  end

  def index
    @pages = Page.order(:created_at)
  end

  private
    def page_params
      params.permit(:url)
    end

end
