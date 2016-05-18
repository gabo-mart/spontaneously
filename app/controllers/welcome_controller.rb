class WelcomeController < ApplicationController
  def index
    @packages = Package.all
  end
  def show
  end
  def confirmation
  end
end
