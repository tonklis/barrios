class NeighborhoodsController < ApplicationController

  load_and_authorize_resource :except => [:stats, :total_stats, :add_kilometers]

  # GET /neighborhoods
  # GET /neighborhoods.json
  def index
    @neighborhoods = Neighborhood.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @neighborhoods }
    end
  end

  # GET /neighborhoods/1
  # GET /neighborhoods/1.json
  def show
    @neighborhood = Neighborhood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @neighborhood }
    end
  end

  # GET /neighborhoods/new
  # GET /neighborhoods/new.json
  def new
    @neighborhood = Neighborhood.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @neighborhood }
    end
  end

  # GET /neighborhoods/1/edit
  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  # POST /neighborhoods
  # POST /neighborhoods.json
  def create
    @neighborhood = Neighborhood.new(params[:neighborhood])

    respond_to do |format|
      if @neighborhood.save
        format.html { redirect_to @neighborhood, notice: 'Neighborhood was successfully created.' }
        format.json { render json: @neighborhood, status: :created, location: @neighborhood }
      else
        format.html { render action: "new" }
        format.json { render json: @neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /neighborhoods/1
  # PUT /neighborhoods/1.json
  def update
    @neighborhood = Neighborhood.find(params[:id])

    respond_to do |format|
      if @neighborhood.update_attributes(params[:neighborhood])
        format.html { redirect_to @neighborhood, notice: 'Neighborhood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighborhoods/1
  # DELETE /neighborhoods/1.json
  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy

    respond_to do |format|
      format.html { redirect_to neighborhoods_url }
      format.json { head :no_content }
    end
  end

  def stats
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    stats = @neighborhood.stats
    @neighborhood["total_kilometers"] = stats[:kilometers]
    @neighborhood["total_users"] = stats[:users]
    @neighborhood["position"] = stats[:position]

    respond_to do |format|
      format.json { render json: @neighborhood, :except => [:created_at, :updated_at] }
      format.xml { render xml: @neighborhood, :except => [:created_at, :updated_at], :skip_types => true, :camelize => true }
    end
  end

  def total_stats
    @neighborhoods = Neighborhood.total_stats

    respond_to do |format|
      format.json { render json: @neighborhoods, :except => [:created_at, :updated_at] }
      format.xml { render xml: @neighborhoods, :except => [:created_at, :updated_at], :skip_types => true, :camelize => true }
    end
  end

  def add_kilometers
    @kilometers = params[:kilometers].to_f
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @user = User.find(User.joins(:roles).where("roles.name = 'external' and neighborhood_id = ?", @neighborhood.id).first.id)
    
    @user.update_attribute(:kilometers, @user.kilometers + @kilometers.round(2))
    
    respond_to do |format|
      format.json { render json: @user, :except => [:created_at, :updated_at] }
      format.xml { render xml: @user, :except => [:created_at, :updated_at], :skip_types => true, :camelize => true }
    end
  end
  
end
