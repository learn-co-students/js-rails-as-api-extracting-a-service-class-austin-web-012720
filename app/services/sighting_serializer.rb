class SightingSerializer
  def initialize(sighting_object)
    @sighting = sighting_object
  end 
  
  def to_serialized_json
    options ={
      include: {
        bird: {
          only: [:name, :species]
        },
        location: {
          only: [:latitude, :longitude]
        }
      },
      except: [:updated],
    }
    @sighting.to_json(options)
  end 

end 