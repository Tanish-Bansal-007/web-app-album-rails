class TagsController < ApplicationController
    def new
        @tag= Tag.new
    end

    def create
        @album = current_user.albums.find(params[:album_id])
        image = params[:image]
        tags = params[:tag][:tag_name]
        tags.each do |tag|
            if tag.present?
                @tag = Tag.new(tag_name: tag, image_id: image)
                @tag.save
                redirect_to albums_path
            else
                redirect_to albums_path
            end
        end
    end    
end
