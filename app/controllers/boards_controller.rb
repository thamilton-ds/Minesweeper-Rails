class BoardsController < ApplicationController
  
  def index
    @boards = Board.order(created_at: :desc).limit(10)
  end

  def create
    created_user = User.find_or_create_by(email: board_params[:user])

    @board = Board.create(board_params.merge(user: created_user))

    render "board"
  end

  def show
    @board = Board.find(params[:id])
  end
  
  def open
    @board = Board.find(params[:id])

    render "board"
  end

  def lists
    @boards = Board.all.order(created_at: :desc)

    render "lists"
  end

  private

  def board_params
    params.require(:board).permit(:user, :name, :width, :height, :mine)
  end

end
