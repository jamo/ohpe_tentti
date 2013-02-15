class JatkosController < ApplicationController
  skip_before_filter :authenticate_user, :only => [ :new, :create, :show]
  skip_before_filter :can_access? , :only => [:new, :create, :show]
  def index
    @jatkos = Jatko.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jatkos }
    end
  end

  def show
    @jatko = Jatko.find_by_key(params[:id])
    #return respond_access_denied unless session[:jatko_id] == @jatko.id or admin?
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jatko }
    end
  end

  def new
    @jatko = Jatko.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jatko }
    end
  end

  def edit
    @jatko = Jatko.find_by_key(params[:id])
    return respond_access_denied  unless sessionn[:jatko_id] == @jatko.id
  end

  def create
    @jatko = Jatko.new(params[:jatko])
    respond_to do |format|
      if @jatko.save
        session[:jatko_id] = @jatko.id
        format.html { redirect_to @jatko, notice: 'Jatko was successfully created.' }
        format.json { render json: @jatko, status: :created, location: @jatko }
      else
        format.html { render action: "new" }
        format.json { render json: @jatko.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @jatko = Jatko.find(params[:id])

    respond_to do |format|
      if @jatko.update_attributes(params[:jatko])
        format.html { redirect_to @jatko, notice: 'Jatko was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jatko.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @jatko = Jatko.find(params[:id])
    @jatko.destroy

    respond_to do |format|
      format.html { redirect_to jatkos_url }
      format.json { head :no_content }
    end
  end
end
