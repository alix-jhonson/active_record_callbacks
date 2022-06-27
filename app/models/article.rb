class Article < ActiveRecord::Base
after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Article destroyed'
  end
end
