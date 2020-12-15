class PostsController < ApplicationController
  def index   #コントローラー,indexアクション,インスタンスメソッド
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end