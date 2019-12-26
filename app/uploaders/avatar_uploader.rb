class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fill: [400, 400]

  version :thumb do
    process resize_to_fit: [100, 100]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
