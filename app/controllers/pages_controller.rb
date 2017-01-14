class PagesController < ApplicationController

  def about
    render 'aboutpage'
  end

  def showmyrecipes
    @recipes = Recipe.where(:author => (current_user.first_name + " " + current_user.last_name))
    render 'myrecipes'
  end
end
