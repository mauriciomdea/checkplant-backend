class Api::V1::AnnotationsController < Api::V1::ApiController

  # POST /api/v1/annotations
  def create

    @annotation = Annotation.new(annotation_params)
    if @annotation.save
      render json: @annotation, status: :created
    else
      render json: @annotation.errors, status: :unprocessable_entity
    end

  end

  private

    # Only allow a list of trusted parameters through.
    def annotation_params
      params.permit(:user_id, :text, :latitude, :longitude)
    end

end
