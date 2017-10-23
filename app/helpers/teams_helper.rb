module TeamsHelper

  def sponsor_name(sponsor)
    sponsor.name.remove!("[#")
  end
end
