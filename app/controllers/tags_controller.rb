class TagsController < ApplicationController
    def new
        @tag= Tag.new
    end

    def create
        @album = current_user.albums.find(params[:album_id])
        image = params[:image]
        tag = params[:tag][:tag_name]
        if tag.present?
            @tag = Tag.new(tag_name: tag, image_id: image)
            @tag.save
            redirect_to album_path(@album)
        else
            redirect_to album_path(@album)
        end
    end    
end
