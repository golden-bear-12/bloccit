class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |value, index|
      if index % 4 == 0
        value.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
