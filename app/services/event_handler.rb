class EventHandler
  def initialize(event)
    @event = event
  end

  def add_meeting(params)
    meetings.create(params)
  end

  def add_invitation(params)
    invitations.create(params)
  end
  #i am not to sure how this is going to be handled at the moment
  def confirm_event
    @confirmed = true
  end

  def confirmed?
    @event.confirmed?
  end

  def meetings
    @meetings ||= @event.meetings
  end

  def invitations
    @invitations ||= @event.invitations
  end
end