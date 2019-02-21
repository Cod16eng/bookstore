class BooksController < ApplicationController
  def index
    @book_title = 'Add Book'
    @books =Book.all
  end

  def new
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book Created"

      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @book =Book.find(params[:id])
    @category = Category.all
    
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :coverpath,:category_id, :author_id, :publisher_id, :isbn, :price, :buy, :year, :format, :excerpt, :pages)
  end
end
