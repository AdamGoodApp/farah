class PhotographiesController < ApplicationController
http_basic_authenticate_with name: "farahlove", password: "nanoo1988", except: [:index, :show]
  
  # GET /photographies
  # GET /photographies.json
  def index
    @photographies = Photography.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photographies }
    end
  end

  def admin
    @photographies = Photography.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photographies }
    end
  end

  # GET /photographies/1
  # GET /photographies/1.json
  def show
    @photography = Photography.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photography }
    end
  end

  # GET /photographies/new
  # GET /photographies/new.json
  def new
    @photography = Photography.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photography }
    end
  end

  # GET /photographies/1/edit
  def edit
    @photography = Photography.find(params[:id])
  end

  # POST /photographies
  # POST /photographies.json
  def create
    @photography = Photography.new(params[:photography])

    respond_to do |format|
      if @photography.save
        format.html { redirect_to @photography, notice: 'Photography was successfully created.' }
        format.json { render json: @photography, status: :created, location: @photography }
      else
        format.html { render action: "new" }
        format.json { render json: @photography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photographies/1
  # PUT /photographies/1.json
  def update
    @photography = Photography.find(params[:id])

    respond_to do |format|
      if @photography.update_attributes(params[:photography])
        format.html { redirect_to @photography, notice: 'Photography was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographies/1
  # DELETE /photographies/1.json
  def destroy
    @photography = Photography.find(params[:id])
    @photography.destroy

    respond_to do |format|
      format.html { redirect_to photographies_url }
      format.json { head :no_content }
    end
  end
end
