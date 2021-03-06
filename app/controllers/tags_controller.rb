class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]
	def index
	  @tag = Tag.all
	end

	def show
	  @tag = Tag.find(params[:id])
	end

	def destroy
	 @tag = Tag.find(params[:id]).destroy
	flash.notice = "Tag '#{@tag}' deleted!"
	redirect_to tag_path
	end
end
