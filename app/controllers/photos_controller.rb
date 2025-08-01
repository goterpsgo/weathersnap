require "exifr/jpeg"
require "date"

class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]

  # GET /photos or /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1 or /photos/1.json
  def show
    image = nil

    @photo.photo_attachment.open do |file|
      image = EXIFR::JPEG.new(file.path)
    end
    
      
    lat = image.gps&.latitude
    long = image.gps&.longitude
    datestamp = image.date_time_original
    date = datestamp.strftime("%Y-%m-%d")

    # Print camera model, image width, GPS latitude (if available), and date taken
    puts "Camera Model: #{image.model}"
    puts "Image Width: #{image.width}"
    puts "GPS Latitude: #{image.gps&.latitude}"
    puts "GPS Longitude: #{image.gps&.longitude}"
    puts "Date Taken: #{date}"
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos or /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: "Photo was successfully created." }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1 or /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: "Photo was successfully updated." }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1 or /photos/1.json
  def destroy
    @photo.destroy!

    respond_to do |format|
      format.html { redirect_to photos_path, status: :see_other, notice: "Photo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.expect(photo: [ :user_id, :photo_timestamp, :tz, :latitude, :longitude, :temperature, :condition, :photo_attachment ])
    end
end
