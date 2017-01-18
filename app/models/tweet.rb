class Tweet < ApplicationRecord
  belongs_to :user

  def self.create_with_params(params, user)
    new({
      content: params[:content],
      user_id: user.id
    })
  end

  def update_with_params(params, user)
    update({
      content: params[:content],
      user_id: user.id
    })
  end
end
