class Api::V1::SessionsController < Api::V1::ApiController

  # POST /api/v1/sessions
  def create

    if @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        # session[:id] = @user.id
        render json: @user, status: :created
      else
        render json: {error: "Not authorized"}, status: 401
      end
    else
      head :not_found
    end

  end

end
