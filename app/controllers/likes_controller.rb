class LikesController < ApplicationController
    
    def index
        if params[:user_id]
            liker = User.find(params[:user_id])
            render json: [liker.liked_artworks, liker.liked_comments]
        elsif params[:artwork_id]
            artwork = Artwork.find(params[:artwork_id])
            render json: artwork.likers
        elsif params[:comment_id]
            comment = Comment.find(params[:comment_id])
            render json: comment.likers
        else
            render json: Like.all 
        end

    end

    def create
        like = Like.new(like_params)
        if like.save
            render json: like
        else
            render json: like.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        like = Like.find(params[:id])
        if like.destroy
            render json: like 
        else
            render json: "Can't destroy like. Too important."
        end
    end

    private

    def like_params
        params.require(:like).permit(:liker_id, :likeable_id, :likeable_type)
    end
end