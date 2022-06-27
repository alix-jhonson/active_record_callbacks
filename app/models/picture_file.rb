class PictureFile < ActiveRecord::Base
  after_commit :delete_picture_file_from_disk, on: [:destroy]

  def delete_picture_file_from_disk
    if File.exist?(filepath)
      File.delete(filepath)
    end
  end
       PictureFile.transaction do
  picture_file_1.destroy
  picture_file_2.save!
       end
    end
