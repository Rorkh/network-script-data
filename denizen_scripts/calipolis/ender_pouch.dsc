ender_pouch:
  type: item
  debug: false
  material: feather
  display name: <&d>Ender Pouch
  lore:
    - "<&b>Access your Ender Chest!"
  flags:
    right_click_script: ender_pouch_open
  mechanisms:
    custom_model_data: 50
  data:
    recipe_book_category: gadgets
  recipes:
    1:
      type: shaped
      input:
        - ender_eye|obsidian|ender_eye
        - obsidian|ender_chest|obsidian
        - ender_eye|obsidian|ender_eye

ender_pouch_open:
  type: task
  debug: false
  script:
    - if <player.has_flag[pvp]>:
      - narrate "<&c>You cannot use an Ender Pouch in PvP"
      - stop
    - inventory open d:<player.enderchest>