module ImageMagickTestScriptHelper
  require 'RMagick'
  include Magick


  def self.process_image
    @source_image =  Image.read("#{dropbox_path}wrap_generator/source_images/#{@artwork.artwork_file_name}").first
    @send_array = Array.new
    Rails.logger.debug "+++++++++++++"
    Rails.logger.debug "+++++++++++++"
    Rails.logger.debug "+++++++++++++"
    Rails.logger.debug "+++++++++++++"
    Rails.logger.debug "+++++++++++++"

    run_script

    @send_array
  end

  def self.run_script

  end



  # ======================================
  # Save image
  # ======================================
  def self.save_image(image, name)
    #logger.debug "Saving #{@wrap_export_path}#{name}"

    image.write("#{@wrap_export_path}#{name}")

    @send_image_array.push(name)

  end
end