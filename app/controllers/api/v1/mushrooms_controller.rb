class Api::V1::MushroomsController < ApplicationController
    
            def index
                mushrooms = Mushroom.all.with_attached_image
                render json: mushrooms.map { |mushroom|
                mushroom.as_json.merge({ image_url: mushroom.image_url })
                }
            end
    
            def show
                mushroom = Mushroom.find(params[:id]) 
                render json: mushroom.as_json.merge({ image_url: mushroom.image_url })
  
                # image = rails_blob_path(mushroom.image)

                # if mushroom.id == params[:id]
                #     render json: { mushroom: mushroom, image: image } 
                # else 
                #     render json: mushroom
                # end 
            end
      
    end