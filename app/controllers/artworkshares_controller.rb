class ArtworksharesController < ApplicationController

    # def index
    #     render json: ArtworkShare.all
    # end

    # def show
    #     render json: ArtworkShare.find(params[:id])
    # end

    def create
        artwork_share = ArtworkShare.new(artwork_share_params)
        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork_share = ArtworkShare.find(params[:id])
        if artwork_share.destroy
            render json: artwork_share 
        else
            render json: "Can't destroy artwork_share record. Too important."
        end
    end

    private

    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end
end