class User < ApplicationRecord
  has_many :tweets

  def self.find_or_build(code)
    user = find_by(code: code)
    return user unless user.nil?

    create_user(code)
  end

  def self.create_user(code)
    create({
      code: code,
      avatar: possible_avatars.sample
    })
  end

  def self.possible_avatars
    ['https://randomuser.me/api/portraits/thumb/men/83.jpg']
  end
end
