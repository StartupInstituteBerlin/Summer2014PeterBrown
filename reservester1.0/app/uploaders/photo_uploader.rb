# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  
  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  #include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog
  
  include CarrierWave::MimeTypes
  process :set_content_type

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

   version :thumbnail do
    process :resize_to_fit => [300, 250]
  end

  version :masthead do
    process :resize_to_fit => [600, 500]
  end

end
