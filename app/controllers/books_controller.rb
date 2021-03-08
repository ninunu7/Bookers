class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    blog.save
    redirect_to books_path
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
