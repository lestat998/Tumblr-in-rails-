class CommentsController < ApplicationController
before_action :find_comment, :only [:create, :delete]

	def create		
		@comment = @post.comments.create(comment_params)

		redirect_to post_path(@post)
	end

	def destroy
		@comment = @pots.comments.find([:pots_id])
		@comment.destroy

		redirect_to post_path(@post)
	end

		private

		def find_comment
			@post = Post.find(params[:post_id])
		end 

		def comment_params
			params[:comment].permit(:name, :body)
		end
end
