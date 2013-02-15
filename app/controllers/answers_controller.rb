class AnswersController < ApplicationController
  skip_before_filter :authenticate_user, :only => [ :new, :create, :show]
  skip_before_filter :can_access? , :only => [:new, :create, :show]
 
  # GET /answers
  # GET /answers.json
  def index

    @answers = Answer.current

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = Answer.find_by_key(params[:id])
    return respond_access_denied  unless session[:answer_id] == @answer.id or admin?

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    session[:answer_id]=nil #:P
    @answer = Answer.find_by_id(session[:answer_id]) ||  Answer.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /answers/1/edit
  def edit
    return res
    @answer = Answer.find_by_key(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(params[:answer])
    @answer.deprecated = false

    note = %Q{Kiitos vastauksestasi.}
    respond_to do |format|
      if @answer.save
        session[:answer_id] = @answer.id
        format.html { redirect_to answer_path(@answer.key), notice: note }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @answer = Answer.find_by_key(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to answer_path(@answer.key), notice: 'Answer was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end
end
