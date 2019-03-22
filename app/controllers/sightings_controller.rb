class SightingsController < ApplicationController
    
    def new 
        animal = Animal.find(params[:animal_id])
        @sighting = animal.sightings.new 
    end
    
    def create
        @sighting = Sighting.new(sighting_params)
        if @sighting.save
            redirect_to animal_path(@sighting.animal)
        else
            @errors = @animal.errors.full_messages
            render 'new'
        end
    end
    
    def edit
        @sighting = Sightings.find(params[:id])
    end
    
    def updated
        animal = Animal.find(params[:id])
        @sighting = animal.sightings
        if @sighting.update(sighting_params)
            redirect_to :animal
        else
            @errors = @sighting.errors.full_messages
            render :new
        end
    end
    
    def destroy
    end
    
    
    private
    def sighting_params
        params.require(:sighting).permit(:animal_id, :date, :time, :latitude, :longitude)
    end
end
