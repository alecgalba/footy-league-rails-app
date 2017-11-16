class CommentsController < ApplicationController

  def create
    @league = League.find(params[:league_id])
    @comment = current_user.comments.create(comment_params)
    @comment.league = @league
    @comment.save
    render json: @comment, status: 201
  end



  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
