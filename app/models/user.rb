class User < ActiveRecord::Base
has_many :articles, dependent: :destroy
end
user = User.first
user.articles.create!
user.destroy
