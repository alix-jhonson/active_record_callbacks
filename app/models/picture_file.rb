class PictureFile < ActiveRecord::Base
  after_destroy PictureFileCallbacks.new
end


class PictureFileCallbacks
  def after_destroy(picture_file)
    if File.exist?(picture_file.filepath)
      File.delete(picture_file.filepath)
    end
  end
end
