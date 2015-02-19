class CatsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def serve
    @incoming = true
    CatJob.perform_later current_user.id
    render :index
  end
end
