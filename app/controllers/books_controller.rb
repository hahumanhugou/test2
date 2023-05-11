class BooksController < ApplicationController
  def index
     @book = Book.new
     @books = Book.all
  end
  def edit

  end
  def show
     @book = Book.find(params[:id])
  end
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
  end
   private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
