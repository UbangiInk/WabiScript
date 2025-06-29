local LrView = import 'LrView'

return {
  sectionsForTopOfDialog = function(viewFactory, _)
    return {
      {
        title = "About WabiScript",
        view = viewFactory:column {
          spacing = viewFactory:control_spacing(),

          viewFactory:static_text {
            title = "WabiScript is a Zen-inspired AI captioning plugin for Lightroom.",
          },

          viewFactory:static_text {
            title = "Crafted by Ubangi Ink — where poetry meets metadata.",
          },

          viewFactory:static_text {
            title = "Version 0.1 — Blossoming quietly.",
          },

          viewFactory:static_text {
            title = "https://github.com/UbangiInk/WabiScript",
          },
        }
      }
    }
  end
}