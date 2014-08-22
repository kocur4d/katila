class EventHandler
  def initialize(event)
    @event = event
  end

  def add_meeting
    @event.add_meeting
  end

  def add_invitation
    @event.add_invitation
  end
  #i am not to sure how this is going to be handled at the moment
  def confirm_event
    @confirmed = true
  end

  def confirmed?
    @event.confirmed?
  end
end