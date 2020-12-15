class PostsController < ApplicationController
  def index   #コントローラー,indexアクション,インスタンスメソッド
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end