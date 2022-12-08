class PostsController < ApplicationController
  before_action :set_blog, only: [:show, :edit]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "コメントを投稿しました"
    else
      render :new
    end

    def show
    end

    def edit
    end



    private

    def post_params
      params.require(:post).permit(:content)
    end

    defset_post
      @post = Post.find(params[:id])
    end
end


