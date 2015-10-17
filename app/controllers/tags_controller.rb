class TagsController < ApplicationController
  def index
    @tags = tags.all
  end
end
