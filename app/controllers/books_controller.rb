class BooksController < ApplicationController
 
  def new
    @book = Book.new
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @book = Book.new
    @bookf = Book.find(params[:id])  
  end
  
  def edit
    @book = Book.find(params[:id])  
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)  
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end