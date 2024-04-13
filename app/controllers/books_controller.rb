class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    # logger.debug(params)
    book = Book.new(book_params) 
    book.save
    redirect_to '/books/show' #各々のshowページに飛ぶ
  end
  
  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end
  
  private  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
