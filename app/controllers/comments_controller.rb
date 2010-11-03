class CommentsController < ApplicationController
    def create
        post = Post.find(params[:post_id])
        post.comments.create(params[:comment])
        redirect_to post
    end
    
    def show
        @comment = Comment.find(params[:id])
    end
end
