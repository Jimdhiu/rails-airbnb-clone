module ApplicationHelper

  def image_or_default image, options = {}
    if image.nil?
      image_path "no_boat_photo.png"
    else
      cl_image_path image.path, options
    end
  end
end
