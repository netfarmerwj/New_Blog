class CatagariesController < ApplicationController
  # GET /catagaries
  # GET /catagaries.json
  def index
    @catagaries = Catagary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catagaries }
    end
  end

  # GET /catagaries/1
  # GET /catagaries/1.json
  def show
    @catagary = Catagary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catagary }
    end
  end

  # GET /catagaries/new
  # GET /catagaries/new.json
  def new
    @catagary = Catagary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catagary }
    end
  end

  # GET /catagaries/1/edit
  def edit
    @catagary = Catagary.find(params[:id])
  end

  # POST /catagaries
  # POST /catagaries.json
  def create
    @catagary = Catagary.new(params[:catagary])

    respond_to do |format|
      if @catagary.save
        format.html { redirect_to @catagary, notice: 'Catagary was successfully created.' }
        format.json { render json: @catagary, status: :created, location: @catagary }
      else
        format.html { render action: "new" }
        format.json { render json: @catagary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catagaries/1
  # PUT /catagaries/1.json
  def update
    @catagary = Catagary.find(params[:id])

    respond_to do |format|
      if @catagary.update_attributes(params[:catagary])
        format.html { redirect_to @catagary, notice: 'Catagary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catagary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catagaries/1
  # DELETE /catagaries/1.json
  def destroy
    @catagary = Catagary.find(params[:id])
    @catagary.destroy

    respond_to do |format|
      format.html { redirect_to catagaries_url }
      format.json { head :no_content }
    end
  end
end
