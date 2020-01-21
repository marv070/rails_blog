class CommentsController < ApplicationController

    def create
      @blog = Blog.find(params[:comment][:blog_id])
      @comment = @blog.comments.create(params[:comment].permit(:name, :comment, :blog_id))
      redirect_to blog_path(@blog)
    end

    def destroy
      comment = Comment.find(params[:id])
      @blog = comment[:blog_id]
      comment.destroy
      redirect_to blog_path(@blog), notice: 'Comment was successfully deleted.'
    end
end
