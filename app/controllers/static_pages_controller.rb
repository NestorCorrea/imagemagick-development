class StaticPagesController < ApplicationController
  # =================================
  # Imports
  # =================================
  include ImageMagickTestScriptHelper


  # =================================
  # Properties
  # =================================
  @wrap_array



  # =================================
  # Action Methods
  # =================================
  def home
    logger.debug 'home called'
  end

  def execute_script
    logger.debug 'execute_script called'

    source_file_path = "#{Rails.root}/app/assets/images/source.jpg"
    logger.debug "########loading image from #{source_file_path}"


    source_image =  Image.read(source_file_path).first


    @wrap_array = ImageMagickTestScriptHelper.process_image source_image, "#{Rails.root}/app/assets/images/processed/"

    #redirect_to '/view_result'
  end

  def show

  end

end
