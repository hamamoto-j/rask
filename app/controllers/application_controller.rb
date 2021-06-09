class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
    render html: "Rask : Info"
  end
end
