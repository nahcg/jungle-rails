class Admin::DashboardController < ApplicationController
  before_action :authenticate
    def show
      @category_count = Category.count
      @product_count = Product.count
    end
    
  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == 'Jungle' && password == 'book'
    end
  end
end
