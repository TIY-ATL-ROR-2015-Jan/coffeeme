class CatJob
  include Sidekiq::Worker

  def perform user_id
    user = User.find(user_id)
    return_unless_user
    user.cat_me!
  end
end
