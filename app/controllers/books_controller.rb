class BooksController < ApplicationController
def index
  @books = Book.all
  end

  def new
  @book = Book.new
  end

  def create
  @book = Book.new(params[:book])
  if @book.save
  flash[:notice] = "Book added Successfully"
  redirect_to book_path(@book)
  else 
  flash[:alert] = "Book not added Successfully"
  render 'new'
  end
  end

  def edit
  @book = Book.find(params[:id])  
  end

  def update
  @book = Book.find(params[:id])
  if @book.update_attributes(params[:book])
  flash[:notice] = "Book has been updated"
  redirect_to book_path(@book)
  else
  flash[:alert] = "Book not added"
  render 'edit'
  end
  end
     
  def show
  @book = Book.find(params[:id])
   end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
  flash[:notice] = "Book has been deleted"
  redirect_to books_path
  end

end
