class User < ActiveRecord::Base
after_touch do |user|
    puts "You have touched an object"
  end
end
u = User.create(name: 'Kuldeep')
u.touch
