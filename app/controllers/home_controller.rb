class HomeController < ApplicationController
  def index
    @instagram = Instagram.user_followed_by("361586616").length
  end
end
