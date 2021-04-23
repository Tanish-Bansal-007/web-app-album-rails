class TagsController < ApplicationController
    def new
        @tag= Tag.new
    end

    def create
        @album = current_user.albums.find(params[:album_id])
        image_id = params[:image]
        tags = params[:tag][:tag_name].split(",")
        tags.each do |tag|
            tag = Tag.new(tag_name: tag, image_id: image_id)
            tag.save
        end
        redirect_to album_path(@album)
        # if tag.present?
            
        # else
        #     redirect_to album_path(@album)
        # end
    end    
end
