require 'builder'
class HomeController < ApplicationController

  def index
    # @books = Book.all
    XmlWorker.perform_async
    redirect_to '/home/xml_dpi_gen'
    flash.notice = 'generated'
  end

  def show

  end

  def xml_dpi_gen

  end

end
