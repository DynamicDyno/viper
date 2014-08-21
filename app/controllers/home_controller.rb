class HomeController < ApplicationController
  def index
    render layout: false if request.xhr?
  end
end
