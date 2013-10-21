class ColumnSamplesController < ApplicationController
  before_action :set_column_sample, only: [:show, :edit, :update, :destroy]

  # GET /column_samples
  # GET /column_samples.json
  def index
    @column_samples = ColumnSample.all
  end

  # GET /column_samples/1
  # GET /column_samples/1.json
  def show
  end

  # GET /column_samples/new
  def new
    @column_sample = ColumnSample.new
  end

  # GET /column_samples/1/edit
  def edit
  end

  # POST /column_samples
  # POST /column_samples.json
  def create
    @column_sample = ColumnSample.new(column_sample_params)

    respond_to do |format|
      if @column_sample.save
        format.html { redirect_to @column_sample, notice: 'Column sample was successfully created.' }
        format.json { render action: 'show', status: :created, location: @column_sample }
      else
        format.html { render action: 'new' }
        format.json { render json: @column_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /column_samples/1
  # PATCH/PUT /column_samples/1.json
  def update
    respond_to do |format|
      if @column_sample.update(column_sample_params)
        format.html { redirect_to @column_sample, notice: 'Column sample was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @column_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /column_samples/1
  # DELETE /column_samples/1.json
  def destroy
    @column_sample.destroy
    respond_to do |format|
      format.html { redirect_to column_samples_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_column_sample
      @column_sample = ColumnSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def column_sample_params
      params.require(:column_sample).permit(:c1, :c2, :c3)
    end
end
