class BooksController < ApplicationController
  def new
    # @book = Book.new indexに内蔵させた
  end

  def create
    @book = Book.new(book_params) 
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id) #各々のshowページに飛ぶ
    else
      @books = Book.all
      # アクションが変わると、リセットされ手ぶらになる
      render :index
    end
  end
  
  def index
    @book = Book.new
    
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book.id)
    else
      @book = Book.find(params[:id])   #ここはなに？なぜ一回捨てたはずのものがあるの？form withを再表示させるために再度updateを行っている
      @book.update(book_params)
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy 
    flash[:notice] = "Book was successfully destroyed."
    redirect_to '/books' #id指定しないときのredirect_to　URL指定ではないといけないので、path指定
  end 
  
  
  private  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end 