class User < ActiveRecord::Base
after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!"
  end
end
User.new
User.first
