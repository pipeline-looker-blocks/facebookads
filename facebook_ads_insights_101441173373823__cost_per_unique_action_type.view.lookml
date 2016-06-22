- view: facebook_ads_insights__cost_per_unique_action_type
  sql_table_name: facebook.facebook_ads_insights_101441173373823__cost_per_unique_action_type
  fields:

  - dimension: 1d_click2667dbcf357b95eaa7a570105d8cea52
    type: number
    sql: ${TABLE}."1d_click#2667dbcf357b95eaa7a570105d8cea52"

  - dimension: 1d_click5c9684b64e58b74505ce1f0657d7fe81
    type: number
    sql: ${TABLE}."1d_click#5c9684b64e58b74505ce1f0657d7fe81"

  - dimension: 1d_view14be166a50011f68181a827474adb603
    type: number
    sql: ${TABLE}."1d_view#14be166a50011f68181a827474adb603"

  - dimension: 1d_viewab873d4e0383b79d244dc239eebff9a4
    type: number
    sql: ${TABLE}."1d_view#ab873d4e0383b79d244dc239eebff9a4"

  - dimension: 28d_click1b3ac415432e269fe5508ed35f8ab11f
    type: number
    sql: ${TABLE}."28d_click#1b3ac415432e269fe5508ed35f8ab11f"

  - dimension: 28d_click632b56e248f9d2b430a5e14f0847d8bf
    type: number
    sql: ${TABLE}."28d_click#632b56e248f9d2b430a5e14f0847d8bf"

  - dimension: 28d_view3bb3b39c5d93fcfad7d4c3d6c8187082
    type: number
    sql: ${TABLE}."28d_view#3bb3b39c5d93fcfad7d4c3d6c8187082"

  - dimension: 28d_viewb30eeb46bbe8dfedcc06fe96224ea656
    type: number
    sql: ${TABLE}."28d_view#b30eeb46bbe8dfedcc06fe96224ea656"

  - dimension: 7d_clicka3a4c97517eb54c0f92621947408d3aa
    type: number
    sql: ${TABLE}."7d_click#a3a4c97517eb54c0f92621947408d3aa"

  - dimension: 7d_clicka82839854b08bced050f813a428cdfd6
    type: number
    sql: ${TABLE}."7d_click#a82839854b08bced050f813a428cdfd6"

  - dimension: 7d_view0c8798945f92fa71e149047bfb38fd31
    type: number
    sql: ${TABLE}."7d_view#0c8798945f92fa71e149047bfb38fd31"

  - dimension: 7d_view98caffd430679d235469935d315dda77
    type: number
    sql: ${TABLE}."7d_view#98caffd430679d235469935d315dda77"

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: _rjm_level_0_id
    type: number
    sql: ${TABLE}._rjm_level_0_id

  - dimension: _rjm_source_key_ad_id
    type: string
    sql: ${TABLE}._rjm_source_key_ad_id

  - dimension: _rjm_source_key_adset_id
    type: string
    sql: ${TABLE}._rjm_source_key_adset_id

  - dimension: _rjm_source_key_campaign_id
    type: string
    sql: ${TABLE}._rjm_source_key_campaign_id

  - dimension_group: _rjm_source_key_date_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}._rjm_source_key_date_start

  - dimension: action_destination
    type: string
    sql: ${TABLE}.action_destination

  - dimension: action_target_id
    type: string
    sql: ${TABLE}.action_target_id

  - dimension: action_type
    type: string
    sql: ${TABLE}.action_type

  - dimension: value18c5a38ebdda61103733fcd354ed379c
    type: number
    sql: ${TABLE}."value#18c5a38ebdda61103733fcd354ed379c"

  - dimension: value88d3e63ed3394ef65bdbf8680440cfec
    type: number
    sql: ${TABLE}."value#88d3e63ed3394ef65bdbf8680440cfec"

  - measure: count
    type: count
    drill_fields: []

