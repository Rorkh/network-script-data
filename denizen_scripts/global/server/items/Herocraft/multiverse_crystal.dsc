multiverse_crystal:
  type: item
  material: feather
  display name: <&6>Multiverse Crystal
  lore:
  - "<&e>What the heck is this?"
  flags:
    right_click_script: multiverse_crystal_task

multiverse_crystal_task:
  type: task
  debug: false
  script:
    - if <context.item.has_flag[last_used]> && <context.item.flag[last_used].from_now.in_minutes> < 10:
      - narrate "<&c>This item has not recharged"
      - stop
    - inventory adjust slot:<player.held_item_slot> last_used:<util.time_now>
    - if <bungee.server> == herocraft:
      - run herocraft_send_to_world def:zanzabar
    - else if <bungee.server> == zanzabar:
      - run herocraft_send_to_world def:herocraft
    - else:
      - narrate "<&c>Nothing happens..."
