class SlackController < ApplicationController
  protect_from_forgery except: :handshake

  def handshake
    return render json: {
      token: params['token'],
      type: params['type'],
      challenge: params['challenge']
    }
  end
end
