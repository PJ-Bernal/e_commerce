class StaticContactPagesController < ApplicationController
  def show
    @contact_page = StaticContactPage.find(1)
  end
end
