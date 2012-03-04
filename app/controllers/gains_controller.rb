class GainsController < ApplicationController
  # GET /gains
  # GET /gains.json
  def index
    @gains = Gain.all(:conditions => {:user_id => current_user.id},
        :limit => 10,
        :include => [ :tasks ],
        :order => 'notice desc'
)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gains }
    end
  end

  # GET /gains/1
  # GET /gains/1.json
  def show
    @gain = Gain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gain }
    end
  end

  # GET /gains/new
  # GET /gains/new.json
  def new
    @gain = Gain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gain }
    end
  end

  # GET /gains/1/edit
  def edit
    @gain = Gain.find(params[:id])
  end

  # POST /gains
  # POST /gains.json
  def create
    @gain = Gain.new(params[:gain])

    respond_to do |format|
      if @gain.save
        format.html { redirect_to @gain, notice: 'Gain was successfully created.' }
        format.json { render json: @gain, status: :created, location: @gain }
      else
        format.html { render action: "new" }
        format.json { render json: @gain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gains/1
  # PUT /gains/1.json
  def update
    @gain = Gain.find(params[:id])

    respond_to do |format|
      if @gain.update_attributes(params[:gain])
        format.html { redirect_to @gain, notice: 'Gain was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gains/1
  # DELETE /gains/1.json
  def destroy
    @gain = Gain.find(params[:id])
    @gain.destroy

    respond_to do |format|
      format.html { redirect_to gains_url }
      format.json { head :ok }
    end
  end
end
