module FixturesHelper

  def fixture_date(fixture)
    fixture.date.strftime("%m/%d/%Y")
  end

  def fixture_time(fixture)
    fixture.time.strftime("%l:%M %p")
  end
end
