# frozen_string_literal: true

# Home class as part of page objects approach
class Home < Appom::Page
  element :searchTab, :id, 'vivino.web.app.beta:id/wine_explorer_tab'
end
