class ApplicationController < ActionController::Base
  def hello
    render html: "Rask : Info"
  end
end
