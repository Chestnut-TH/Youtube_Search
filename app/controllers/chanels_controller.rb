class ChanelsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def search
    tagArray = Array[params[:tag1],params[:tag2],params[:tag3],params[:tag4],params[:tag5]]
    @chanels = Chanel.where(tag1: tagArray)
    .or(Chanel.where(tag2: tagArray))
    .or(Chanel.where(tag3: tagArray))
    .or(Chanel.where(tag4: tagArray))
    .or(Chanel.where(tag5: tagArray))    
  end

   
  def new
    if current_user
      @chanel = Chanel.new
    else
      not_logged_action
    end
  end

  def create
    if current_user
      chanel_regist
    else
      not_logged_action
    end
  end

  def show
    @chanel = Chanel.find(params[:id]);
  end
  def edit
    @chanel = Chanel.find(params[:id]);
  end
  def update
    if current_user
      chanel_update     
    else
      not_logged_action
    end
  end

  def destroy
    Chanel.find(params[:id]).destroy
    redirect_to root_url
  end

  private
    def chanel_regist
      chanel = Chanel.new (chanel_params)
      if chanel.save
        tag_regist
        redirect_to chanel
      else
        render new_chanel
      end
    end

    def chanel_update
      chanel = Chanel.find_by(id_param)
      if chanel.update(chanel_params)
        tag_regist
        redirect_to chanel_path
      else
        render new_chanel
      end
    end

    def chanel_params
      params.require(:chanel).permit(:name, :url, :detail, :tag1, :tag2, :tag3, :tag4, :tag5)
    end

    def id_param
      params.require(:chanel).permit(:id);
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

    def not_logged_action
      flash.now[:notice] = 'ログインしてません'
      redirect_to new_user_session_path
    end
end
