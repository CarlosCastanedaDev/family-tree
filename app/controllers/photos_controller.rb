class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  

  # GET /photos or /photos.json
  def index
  @pagy, @photos = pagy(Photo.all.order(created_at: :desc), items: 45)
  end

  # GET /photos/1 or /photos/1.json
  def show
  @photo = Photo.find(params[:id])
  @download_url = Cloudinary::Utils.private_download_url(@photo.image_url.file.public_id, @photo.image_url.file.format, attachment: true)
end

  # GET /photos/new
  def new
    @photo = Photo.new
    @people = Person.all
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos or /photos.json
def create
  @photo = Photo.new(photo_params)
  @photo.owner_id = current_user.person.id

  respond_to do |format|
    if @photo.save
      format.html { redirect_to photo_url(@photo), notice: "Photo was successfully created." }
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
        format.html { redirect_to photo_url(@photo), notice: "Photo was successfully updated." }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1 or /photos/1.json
  def destroy
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url, notice: "Photo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.require(:photo).permit(:owner_id, :image_url, :caption, :location, { person_ids: [] })
    end


end
