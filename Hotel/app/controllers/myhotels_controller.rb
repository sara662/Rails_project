class MyhotelsController < ApplicationController
  # GET /myhotels
  # GET /myhotels.json
  def index
    @myhotels = Myhotel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myhotels }
    end
  end

  # GET /myhotels/1
  # GET /myhotels/1.json
  def show
    @myhotel = Myhotel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myhotel }
    end
  end

  # GET /myhotels/new
  # GET /myhotels/new.json
  def new
    @myhotel = Myhotel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myhotel }
    end
  end

  # GET /myhotels/1/edit
  def edit
    @myhotel = Myhotel.find(params[:id])
  end

  # POST /myhotels
  # POST /myhotels.json
  def create
    @myhotel = Myhotel.new(params[:myhotel])

    respond_to do |format|
      if @myhotel.save
        format.html { redirect_to @myhotel, notice: 'Myhotel was successfully created.' }
        format.json { render json: @myhotel, status: :created, location: @myhotel }
      else
        format.html { render action: "new" }
        format.json { render json: @myhotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myhotels/1
  # PUT /myhotels/1.json
  def update
    @myhotel = Myhotel.find(params[:id])

    respond_to do |format|
      if @myhotel.update_attributes(params[:myhotel])
        format.html { redirect_to @myhotel, notice: 'Myhotel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myhotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myhotels/1
  # DELETE /myhotels/1.json
  def destroy
    @myhotel = Myhotel.find(params[:id])
    @myhotel.destroy

    respond_to do |format|
      format.html { redirect_to myhotels_url }
      format.json { head :no_content }
    end
  end
end
