class CommentsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "dhh", password: "secret", onlys: :destroy

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @result = Result.find(params[:result_id])
    @comment = @result.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to result_path(@result)
  end


  def destroy
    @result = Result.find(params[:result_id])
    @comment = @result.comments.find(params[:id])
    @comment.destroy
    redirect_to result_path(@result)
  end

end