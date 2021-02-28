class PagesController < ApplicationController
  before_action :authenticate_admin!, only: :administration

  layout 'admin_panel', only: :administration
  def home
    @categories = Category.all
  end

  def administration
    
  end
end
