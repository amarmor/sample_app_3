class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello_world
    puts "hello world"
  end

end
