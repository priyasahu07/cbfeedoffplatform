require 'builder'
class HomeController < ApplicationController

  def index
    # @books = Book.all
    XmlWorker.perform_async
  end

  def show

  end



end
