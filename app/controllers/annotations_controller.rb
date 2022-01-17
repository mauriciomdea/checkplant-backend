class AnnotationsController < ApplicationController

  # GET /annotations or /annotations.json
  def index
    @annotations = Annotation.all
  end

end
