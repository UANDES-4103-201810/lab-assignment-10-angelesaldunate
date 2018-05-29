class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @comments = Comment.new
  end

  # GET /movies/1/edit
  def edit
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to movie_path(params[:movie_id]), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
def comment_params
  params.permit(:text, :movie_id)
end
end
