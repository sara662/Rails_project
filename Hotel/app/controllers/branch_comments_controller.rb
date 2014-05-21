class BranchCommentsController < ApplicationController
  # GET /branch_comments
  # GET /branch_comments.json
  def index
    @branch_comments = BranchComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @branch_comments }
    end
  end

  # GET /branch_comments/1
  # GET /branch_comments/1.json
  def show
    @branch_comment =  BranchComment.find(:all, :conditions => { :branch_id => session[:branch_id] })
    #@branch_comment = BranchComment.where("")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @branch_comment }
    end
  end
   #def sel
    #@branch_comment = BranchComment.select("comment").where(:branch_comments => {:branch_id =>1})

    #respond_to do |format|
     # format.html # show.html.erb
      #format.json { render json: @branch_comment }
    #end
  #end
  

  # GET /branch_comments/new
  # GET /branch_comments/new.json
  def new
    @branch_comment = BranchComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @branch_comment }
    end
  end

  # GET /branch_comments/1/edit
  def edit
    @branch_comment = BranchComment.find(params[:id])
  end

  # POST /branch_comments
  # POST /branch_comments.json
  def create
    @branch_comment = BranchComment.new(params[:branch_comment])

    respond_to do |format|
      if @branch_comment.save
        format.html { redirect_to @branch_comment, notice: 'Branch comment was successfully created.' }
        format.json { render json: @branch_comment, status: :created, location: @branch_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @branch_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /branch_comments/1
  # PUT /branch_comments/1.json
  def update
    @branch_comment = BranchComment.find(params[:id])

    respond_to do |format|
      if @branch_comment.update_attributes(params[:branch_comment])
        format.html { redirect_to @branch_comment, notice: 'Branch comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @branch_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_comments/1
  # DELETE /branch_comments/1.json
  def destroy
    @branch_comment = BranchComment.find(params[:id])
    @branch_comment.destroy

    respond_to do |format|
      format.html { redirect_to branch_comments_url }
      format.json { head :no_content }
    end
  end
end
