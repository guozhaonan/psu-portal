class PagesController < ApplicationController
  def home
    @featured = Post.where(featured: true)
  end

  def about
  end
end
