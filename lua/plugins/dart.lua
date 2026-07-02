-- Plugin: nssteinbrenner/dart
-- Installed via store.nvim

return {
    "nssteinbrenner/dart",
    branch = "master",
    tag = "v1.0.0",
    dependencies = {
        {
            "nvim-lua/plenary.nvim"
        }
    },
    config = function()
        -- .setup() is required.
        -- Can be specified with config. Otherwise uses defaults
        local dart =
            require("dart").setup(
        )
    end
}