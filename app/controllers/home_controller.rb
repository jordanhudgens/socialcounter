class HomeController < ApplicationController
  def index
    instagram = Instagram.user("361586616").counts.followed_by

    returned_hash = {instagram: instagram }

    render js: "var social_counts = #{returned_hash.to_json};"

  end
end
