module ImageMagickTestScriptHelper
=begin
Explination
=end


  # =================================
  # Custom Code
  # =================================
  def self.run_script
    save_rmagick_image @source_image, 'exported.jpg'
  end



  # ======================================
  #  |||||||| DO NOT TOUCH BELOW ||||||||
  # ======================================
  # =================================
  # Imports
  # =================================
  require 'RMagick'
  include Magick


  # =================================
  # Properties
  # =================================
  @send_array     # An array of image file names which is then shown on the view
  @source_image   # The image to be manipulated
  @export_path    # The location of where to export saved images. Passed from the controller.


  # =================================
  # Methods
  # =================================
  def self.process_image(magic_image, export_path)
    @source_image = magic_image
    @send_array   = Array.new
    @export_path  = export_path

    run_script

    @send_array
  end

  # ======================================
  # Save image
  # ======================================
  def self.save_rmagick_image(image, name)
    Rails.logger.debug "Saving #{@export_path}#{name}"
    image.write("#{@export_path}#{name}")
    @send_array.push(name)
  end

  def self.add_image_to_return(name)
    @send_array.push(name)
  end
end