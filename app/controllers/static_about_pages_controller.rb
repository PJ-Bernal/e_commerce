class StaticAboutPagesController < ApplicationController
  def show
    @about_page = StaticAboutPage.find(3)
  end
end
