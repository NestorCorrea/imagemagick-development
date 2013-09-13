class StaticPagesController < ApplicationController
  include ImageMagickTestScriptHelper
  @wrap_array
  def home
    logger.debug 'home called'
  end

  def execute_script

    logger.debug 'execute_script called'

    @wrap_array = ImageMagickTestScriptHelper.process_image ''


    redirect_to '/view_result'
  end

  def show

  end

  def view_result
    logger.debug 'show called'

  end
end
