class WelcomeController < ApplicationController
  def index
  	@packages = Package.all
  end
  def show
  end
end
