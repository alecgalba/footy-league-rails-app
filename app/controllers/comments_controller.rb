class CommentsController < ApplicationController
  before_action :set_league

  def index
    @comments = @league.comments
    render 'comments/index', :layout => false, status: 200
  end

  def create
    @comment = current_user.comments.create(comment_params)
    @comment.league = @league
    @comment.save
    render json: @comment, status: 201
  end


  def new
    @comment = Comment.new
  end

  private

  def set_league
    @league = League.find(params[:league_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
