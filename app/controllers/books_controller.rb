class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    #blog.save
    if  @book.save
    redirect_to book_path(@book.id),notice: 'Book was successfully created.'
    end
  end

  def edit
    @book = Book.find(params[:id])
   # redirect_to :action => 'update'
  end

def update
  book=Book.find(params[:id])
  book.update(book_params)

end

  def destroy
    book=Book.find(params[:id])
    if book.destroy
    redirect_to books_path, notice: 'Book was successfully destroyed.'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
