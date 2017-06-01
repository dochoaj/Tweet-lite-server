class User < ApplicationRecord
  has_many :tweets

  def self.find_or_build(code)
    user = find_by(code: code)
    return user unless user.nil?

    create_user(code)
  end

  def self.create_user(code)
    create(
      code: code,
      avatar: possible_avatars.sample
    )
  end

  def self.possible_avatars
    [
      'https://randomuser.me/api/portraits/thumb/men/83.jpg',
      'https://avatarfiles.alphacoders.com/827/82704.png',
      'http://vignette3.wikia.nocookie.net/rickandmorty/images/a/a4/Morty-5412.jpg',
      'https://vignette1.wikia.nocookie.net/phineasandferb/images/8/82/Plat_cap_avatar.png'
    ] + random_user_avatars
  end

  def self.random_user_avatars
    1.upto(90).map { |x| "https://randomuser.me/api/portraits/thumb/men/#{x}.jpg" }
  end
end
