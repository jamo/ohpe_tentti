class KisallisController < ApplicationController
  skip_before_filter :authenticate_user, :only => [ :new, :create, :show]
  skip_before_filter :can_access? , :only => [:new, :create, :show]
  
  # GET /kisallis
  # GET /kisallis.json
  def index
    @kisallis = Kisalli.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kisallis }
    end
  end

  # GET /kisallis/1
  # GET /kisallis/1.json
  def show
    @kisalli = Kisalli.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kisalli }
    end
  end

  # GET /kisallis/new
  # GET /kisallis/new.json
  def new
    @kisalli = Kisalli.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kisalli }
    end
  end

  # GET /kisallis/1/edit
  def edit
    @kisalli = Kisalli.find(params[:id])
  end

  # POST /kisallis
  # POST /kisallis.json
  def create
    @kisalli = Kisalli.new(params[:kisalli])

    respond_to do |format|
      if @kisalli.save
        format.html { redirect_to @kisalli, notice: 'Kisalli was successfully created.' }
        format.json { render json: @kisalli, status: :created, location: @kisalli }
      else
        format.html { render action: "new" }
        format.json { render json: @kisalli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kisallis/1
  # PUT /kisallis/1.json
  def update
    @kisalli = Kisalli.find(params[:id])

    respond_to do |format|
      if @kisalli.update_attributes(params[:kisalli])
        format.html { redirect_to @kisalli, notice: 'Kisalli was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kisalli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kisallis/1
  # DELETE /kisallis/1.json
  def destroy
    @kisalli = Kisalli.find(params[:id])
    @kisalli.destroy

    respond_to do |format|
      format.html { redirect_to kisallis_url }
      format.json { head :no_content }
    end
  end
end