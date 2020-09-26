class Api::V1::MushroomsController < ApplicationController
    
            def index
                mushrooms = Mushroom.all.with_attached_image
                render json: mushrooms.map { |mushroom|
                mushroom.as_json.merge({ image_url: mushroom.image_url })
                }
            end

    
            def show
                mushroom = Mushroom.find(params[:id]) 
                render json: mushroom.as_json.merge({
                    image: url_for(mushroom.image),
                    health_benefits: (mushroom.health_benefits),
                    mush_health: (mushroom.mush_health_benefits),
                    comments: (mushroom.comments),
                    users: (mushroom.users) 
                    })
            end
      
    end