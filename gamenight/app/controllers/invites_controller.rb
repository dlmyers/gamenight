class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :update, :resend, :accept, :decline]


  def resend
    @invite = Invite.find(params[:invite_id])
    UserMailer.invite(@invite).deliver
    redirect_to :back, notice: 'Invite resent'
  end

  def accept
    @invite = Invite.find(params[:invite_id])
    @invite.status = Invite::ACCEPTED
    @invite.save
    redirect_to @invite, notice: 'Invite accepted'
  end

  def decline
    @invite = Invite.find(params[:invite_id])
    @invite.status = Invite::DECLINED
    @invite.save
    redirect_to @invite, notice: 'Invite declined'
  end


  # GET /invites
  # GET /invites.json
  def index
    @invites = Invite.all
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
    @event = @invite.event
  end

  # GET /invites/new
  def new
    @invite = Invite.new
    @selected_event_id = params[:event_id]
  end

  # GET /invites/1/edit
  def edit
  end

  # POST /invites
  # POST /invites.json
  def create
    @invite = Invite.new(invite_params)

    respond_to do |format|
      if @invite.save
        UserMailer.invite(@invite).deliver
        format.html { redirect_to @invite, notice: 'Invite was successfully created.' }
        format.json { render :show, status: :created, location: @invite }
      else
        format.html { render :new }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invites/1
  # PATCH/PUT /invites/1.json
  def update
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite }
      else
        format.html { render :edit }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to invites_url, notice: 'Invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:event_id, :user_id, :status)
    end
end
