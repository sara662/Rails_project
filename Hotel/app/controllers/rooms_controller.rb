class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @room = Room.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room }
    end
	puts "b4"
	puts "#{session[:checkin]}"
	puts "after"
	puts "#$checkin"
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render action: "new" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    @room = Room.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to rooms_url }
      format.json { head :no_content }
    end
  end


  def searchRooms
	branch_name = params[:branch]
	$checkin = Date.civil(params[:check][:"in(1i)"].to_i,params[:check][:"in(2i)"].to_i,params[:check][:"in(3i)"].to_i)
	$checkout = Date.civil(params[:check][:"out(1i)"].to_i,params[:check][:"out(2i)"].to_i,params[:check][:"out(3i)"].to_i)
	puts "#{branch_name}"
	#puts "#{checkin}"
	#puts "#{checkout}"
	@branch=Branch.find(:all ,:conditions => { :branch_name => params[:branch] })
	for item in @branch do
		$branch_id = item.id
	end
	puts "#$branch_id"
	session[:branch_id] = $branch_id
	session[:checkin] = $checkin
	session[:checkout] = $checkout
	#puts "#{session[:checkin]}"
	#redirect_to :controller => 'branch_comments', :action => 'show'#, :id => 3, :something => 'else'
	redirect_to '/branches'

  end

	def available_rooms
		av_rooms=[]
		#avRooms=Roomreserve.find(:all ,:conditions => { : =>  })
		
		resRooms=Roomreserve.where("? >= check_in and ? <= check_in or ? >= check_out and ? <= check_out and branch_id=?",session[:checkin],session[:checkin],session[:checkout],session[:checkout],session[:branch_id])
		if resRooms
		for item in resRooms do
			puts "hhhhhhhhhhhhhhhhhhhhhhhhh"
			av_rooms.push(item.room_id)
		end
puts "b4444444444444444444444"
@avRooms = Room.find(:all, :conditions => ['id not in (?)', av_rooms])
		for item in @avRooms do
			puts "innnnnnnnnnnnnnnnnnnnnn"
			puts "#{item.id}"
		end	
	end 

else
@avRooms = Room.find(:all, :conditions => ['id not in (0)'])
end

end




























