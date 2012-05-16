class WorkoutsController < ApplicationController
 
  def create
    @type = Type.find(params[:type_id])
    @workout = @type.workouts.create(params[:workout])
    
    respond_to do |format|
      if @workout.save
        format.html { redirect_to @type, notice: 'Workout was successfully created.' }
        format.json { render json: @workout, status: :created, location: @type }
      else
        format.html { render action: "new" }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
    #redirect_to type_path(@type)
  end
  
  # GET
  # GET 
  def new
    @type = Type.find(params[:type_id])
    @workout = Workout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout } #could render type as well
    end
  end
end
