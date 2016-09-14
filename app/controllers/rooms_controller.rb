class RoomsController < ApplicationController
before_action :is_authenticated, only: [:sad, :angry, :calm, :happy]

  def sad
    @messages = Sad.all
    puts @messages
    puts @messages.class
  end

  def happy
    @messages = Happy.all
    puts @messages
    puts @messages.class
    
  end

  def angry
    @messages = Angry.all
    puts @messages
    puts @messages.class
    
  end

  def calm
    @messages = Calm.all
    puts @messages
    puts @messages.class
    
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end
