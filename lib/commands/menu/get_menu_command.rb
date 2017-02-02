require 'models/menu'

class GetMenuCommand
  def run
    if Menu.last
      "The menu for this week is: #{Menu.last.url}"
    else
      "The menu for this week is: no url provided"
    end
  end

  def prepare(data)
  end

  def applies_to(request)
    request.downcase.strip == "menu?"
  end
end
