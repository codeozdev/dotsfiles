return {
  -- renkleri gosteren eklenti
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        RGB = true, -- RGB renk kodlarını vurgula
        RRGGBB = true, -- RRGGBB renk kodlarını vurgula
        names = true, -- Renk isimlerini vurgula (ör. red, blue, green)
        css = true, -- CSS dosyalarında renk kodlarını vurgula
        css_fn = true, -- CSS fonksiyonlarını vurgula (ör. rgb(), hsl())
        mode = "foreground", -- Vurgulanan renklerin metin rengini değiştirme modu
      }
    end,
  },
}
