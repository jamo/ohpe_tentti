class QuestionsController < ApplicationController
  skip_before_filter :authenticate_user, :only => [ :new, :create, :show]
  skip_before_filter :can_access? , :only => [:new, :create, :show]
 
  def index
    @questions = Questions.all

    respond_to do |format|
      format.html # index.html.erb
    end

  end

  # GET /pastes/1
  # GET /pastes/1.json
  def show
    
    # @paste = Paste.find(params[:id])
    @question = Questions.find_by_key(params[:id])# unless @paste
  
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /pastes/new
  # GET /pastes/new.json
  def new
    @question = Questions.new
    
    

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /pastes/1/edit
  def edit
    
    #@paste = Paste.find_by_key(params[:id])
  end

  # POST /pastes
  # POST /pastes.json
  def create
#debugger
    @questions = Questions.new(params[:question])
    debugger

    respond_to do |format|
      if @questions.save
        format.html { redirect_to question_path(@question.key), notice: 'Ilmoittautuminen on ' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /pastes/1
  # PUT /pastes/1.json
  def update
    #@paste = Paste.find(params[:id])

    #respond_to do |format|
    #  if @paste.update_attributes(params[:paste])
    #    format.html { redirect_to  paste_path(@paste.key), notice: 'Paste was successfully updated.' }
    #    format.json { head :no_content }
    #  else
    #    format.html { render action: "edit" }
    #    format.json { render json: @paste.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /pastes/1
  # DELETE /pastes/1.json
  def destroy
    #@paste = Paste.find_by_id(params[:id])
    #@paste.destroy

    #    respond_to do |format|
    #     format.html { redirect_to pastes_url }
    #    format.json { head :no_content }
  end
end
