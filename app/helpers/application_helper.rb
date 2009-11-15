# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def curr(price)
    return sprintf("%13.2f", price).gsub("\.", ",") + " &euro;"
  end
end
