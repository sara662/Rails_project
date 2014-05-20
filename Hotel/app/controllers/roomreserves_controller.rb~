class RoomreservesController < ApplicationController
  # GET /roomreserves
  # GET /roomreserves.json
  def index
    @roomreserves = Roomreserve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roomreserves }
    end
  end

  # GET /roomreserves/1
  # GET /roomreserves/1.json
  def show
    @roomreserf = Roomreserve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roomreserf }
    end
  end

  # GET /roomreserves/new
  # GET /roomreserves/new.json
  def new
    @roomreserf = Roomreserve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roomreserf }
    end
  end

  # GET /roomreserves/1/edit
  def edit
    @roomreserf = Roomreserve.find(params[:id])
  end

  # POST /roomreserves
  # POST /roomreserves.json
  def create
    @roomreserf = Roomreserve.new(params[:roomreserf])

    respond_to do |format|
      if @roomreserf.save
        format.html { redirect_to @roomreserf, notice: 'Roomreserve was successfully created.' }
        format.json { render json: @roomreserf, status: :created, location: @roomreserf }
      else
        format.html { render action: "new" }
        format.json { render json: @roomreserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roomreserves/1
  # PUT /roomreserves/1.json
  def update
    @roomreserf = Roomreserve.find(params[:id])

    respond_to do |format|
      if @roomreserf.update_attributes(params[:roomreserf])
        format.html { redirect_to @roomreserf, notice: 'Roomreserve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roomreserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomreserves/1
  # DELETE /roomreserves/1.json
  def destroy
    @roomreserf = Roomreserve.find(params[:id])
    @roomreserf.destroy

    respond_to do |format|
      format.html { redirect_to roomreserves_url }
      format.json { head :no_content }
    end
  end
end
