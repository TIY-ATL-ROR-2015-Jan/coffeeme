class CatsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def serve
    @incoming = true
    CatJob.perform_async current_user.id
    render :index
  end
end
