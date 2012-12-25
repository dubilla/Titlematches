class TitlematchesController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]

  # GET /titlematches
  # GET /titlematches.json
  def index
    @titlematches = Titlematch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @titlematches }
    end
  end

  # GET /titlematches/1
  # GET /titlematches/1.json
  def show
    @titlematch = Titlematch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @titlematch }
    end
  end

  # GET /titlematches/new
  # GET /titlematches/new.json
  def new
    @titlematch = Titlematch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @titlematch }
    end
  end

  # GET /titlematches/1/edit
  def edit
    @titlematch = Titlematch.find(params[:id])
  end

  # POST /titlematches
  # POST /titlematches.json
  def create
    @titlematch = Titlematch.new(params[:titlematch])
    @titles = Title.find(:all)

    respond_to do |format|
      if @titlematch.save
        format.html { redirect_to @titlematch, notice: 'Titlematch was successfully created.' }
        format.json { render json: @titlematch, status: :created, location: @titlematch }
      else
        format.html { render action: "new" }
        format.json { render json: @titlematch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /titlematches/1
  # PUT /titlematches/1.json
  def update
    @titlematch = Titlematch.find(params[:id])

    respond_to do |format|
      if @titlematch.update_attributes(params[:titlematch])
        format.html { redirect_to @titlematch, notice: 'Titlematch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @titlematch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titlematches/1
  # DELETE /titlematches/1.json
  def destroy
    @titlematch = Titlematch.find(params[:id])
    @titlematch.destroy

    respond_to do |format|
      format.html { redirect_to titlematches_url }
      format.json { head :no_content }
    end
  end
end
