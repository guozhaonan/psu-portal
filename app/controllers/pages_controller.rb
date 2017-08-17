class PagesController < ApplicationController
  def home
    @featured = Post.find{ |p| p.featured == true }
  end

  def about
  end
end
