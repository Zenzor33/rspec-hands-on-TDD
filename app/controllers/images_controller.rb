class ImagesController < ApplicationController
  def show
    img = Image.find_by(id: params[:id])

    if img
      image = img.image
  
      data = image.download
      type = image.content_type
      ext = image.filename.to_s.split('.').last
      filename = "image_#{img.id}.#{ext}"
    else
      image_path = Rails.public_path.join('missing.jpeg')
      image = image_path.open('rb')
  
      data = image.read
      type = 'image/jpeg'
      filename = 'missing.jpeg'
    end

    # dispotion: 'inline' will display the image in the browser
    send_data data, type:, filename:, disposition: 'inline'
  end
end