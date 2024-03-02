class Event < ApplicationRecord
  def self.create_from_ics(file_path)
    file = File.open(file_path)
    calendars = Icalendar::Calendar.parse(file)
    event = calendars.first.events.first
    Event.create(
      starts_at: event.dtstart,
      ends_at: event.dtend,
      location: event.location,
      summary: event.summary.strip,
      description: event.description,
      url: event.url
    )
  end
end
