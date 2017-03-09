class UsersController < ApplicationController

  def login
  end

  def fetchUser
    @user = User.find_by(:email => params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/events"
    else
      flash[:login_errors] = "Either email or password is invalid"
      redirect_to ''
    end
  end

  def createUser
    @user = User.create(firstName: params[:firstName], lastName: params[:lastName], email: params[:email], location: params[:location], state: params[:state], password: params[:password], password_confirmation: params[:confirm_pw])

    if @user.save
      session[:user_id] = @user.id
      redirect_to "/events"
    else
      flash[:register_errors] = @user.errors.full_messages
      redirect_to ''
    end
  end

  def editUser
  end

  def updateUser
    @user = User.find(session[:user_id])
    @user.update(firstName: params[:firstName], lastName: params[:lastName], email: params[:email], location: params[:location], state: params[:state])
    redirect_to '/events'
  end

  def events
    @user = User.find(session[:user_id])
    @allevents = Event.all
    @stateevents = Event.where(:state => @user.state)
    @nonstateevents = @allevents - @stateevents
    @userevents = @user.events_joined
    # render :json => @userevents
  end

  def specificevents
    @event = Event.find(params[:id])
    @eventattendees = @event.user_joined
    @userdiscussions = Discussion.where(:event_id => @event.id)
  end

  def deleteEvent
    Event.destroy(params[:id])
    redirect_to :back
  end

  def editEvent
    @event = Event.find(params[:id])
  end

  def joinEvent
    @event = Event.find(params[:id])
    UserEventMatch.create(user:User.find(session[:user_id]), event:Event.find(params[:id]))
    redirect_to :back
  end

  def updateEvent
    @event = Event.find(params[:id])
    @event.update(name: params[:name], date: params[:date], location: params[:location], state: params[:state], user: User.find(session[:user_id]))
    redirect_to '/events'
  end

  def cancelEvent
    UserEventMatch.where(:user_id => session[:user_id], :event_id => params[:id]).first.destroy
    redirect_to :back
  end


  def createEvent
    Event.create name:params[:name], date:params[:date], location:params[:location], state:params[:state], user:User.find(session[:user_id])
    redirect_to :back
  end

  def addDiscussion
    Discussion.create comment:params[:text], user:User.find(session[:user_id]), event:Event.find(params[:event_id])
    redirect_to :back
  end

  def logout
    session[:user_id] = nil
    redirect_to ''
  end

end
