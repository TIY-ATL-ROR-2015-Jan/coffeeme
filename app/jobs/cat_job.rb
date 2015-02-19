class CatJob < ActiveJob::Base
  queue_as :default

  def perform user
    user.cat_me!
  end
end
