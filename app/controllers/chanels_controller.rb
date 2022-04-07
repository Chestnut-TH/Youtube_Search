class ChanelsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def search
    @tag = params[:tag]
    @chanels = Chanel.where(tag1: @tag)
    .or(Chanel.where(tag2: @tag))
    .or(Chanel.where(tag3: @tag))
    .or(Chanel.where(tag4: @tag))
    .or(Chanel.where(tag5: @tag))    
  end

   
  def new
    @chanel = Chanel.new  
  end

  def create
    if current_user
      chanel_regist
    else
      flash.now[:danger] = 'ログインしてません'
      redirect_to render new_user_session_path
    end
  end

  def show
    @chanel = Chanel.find(params[:id]);
  end

  private
    def chanel_regist
      @chanel = Chanel.new (chanel_params)
      if @chanel.save
        tag_regist
        redirect_to @chanel
      else
        render new_chanel
      end
    end

    def chanel_params
      params.require(:chanel).permit(:name, :url, :tag1, :tag2, :tag3, :tag4, :tag5)
    end

    def tag_regist
      tags = [tag_params[:tag1],tag_params[:tag2],tag_params[:tag3],tag_params[:tag4],tag_params[:tag5]]
      tags.each{|tag|
        if tag != "" && !tag.nil? then
          count = Tag.where(name: tag).count
          if count<= 0 then
            Tag.create(name:tag);
          end
        end        
      }
    end

    def tag_params
      params.require(:chanel).permit(:name, :url, :tag1, :tag2, :tag3, :tag4, :tag5)
    end
end
