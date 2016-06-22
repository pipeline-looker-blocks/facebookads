- view: facebook_ads_insights_placement_and_device__website_ctr
  sql_table_name: facebook.facebook_ads_insights_placement_and_device_101441173373823__website_ctr
  fields:

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

  - dimension: _rjm_source_key_impression_device
    type: string
    sql: ${TABLE}._rjm_source_key_impression_device

  - dimension: _rjm_source_key_placement
    type: string
    sql: ${TABLE}._rjm_source_key_placement

  - dimension: action_destination
    type: string
    sql: ${TABLE}.action_destination

  - dimension: action_target_id
    type: string
    sql: ${TABLE}.action_target_id

  - dimension: action_type
    type: string
    sql: ${TABLE}.action_type

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: []

