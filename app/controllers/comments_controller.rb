class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    if !@comment.spam?
      if @comment.save
        redirect_to resource_path(@comment.resource), notice: "Comment saved!"
      else
        render 'new'
      end
    end
  end

  def new
  	@comment = Comment.new
  end
end