class TagsController < ApplicationController
	include TagsHelper

  def index
  	@tags = Tag.all
  end

  def show
  	@tag = Tag.find(params[:id])
  end

  def destroy
  	@tag = Tag.delete(params[:id])

 	flash.notice = "Tag deleted!"

  	redirect_to tags_path
  end

end
