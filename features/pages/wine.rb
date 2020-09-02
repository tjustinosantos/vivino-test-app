# frozen_string_literal: true

class Wine < Appom::Page
  element :wineImage, 'id', 'vivino.web.app.beta:id/perfect_bottle_content'
  element :wineImagePerfect, :id, 'vivino.web.app.beta:id/wine_image_perfect_bottle'
  element :unratedButton, 'id', 'vivino.web.app.beta:id/wine_rating_unrated'
  element :ratedButton, :id, 'vivino.web.app.beta:id/wine_rating'
  element :wishButton, :id, 'vivino.web.app.beta:id/wish_button'
  element :doneButton, 'id', 'vivino.web.app.beta:id/action_done'
  element :closeButton, :id, 'vivino.web.app.beta:id/close'
  element :soldBuyText, :id, 'vivino.web.app.beta:id/sold_by'
end
