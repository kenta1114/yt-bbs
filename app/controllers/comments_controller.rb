class CommentsController < ApplicationControllerdef create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to @post, notice: "コメントを追加しました。"
    else
      redirect_to @post, alert: "コメントを追加できませんでした。"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end