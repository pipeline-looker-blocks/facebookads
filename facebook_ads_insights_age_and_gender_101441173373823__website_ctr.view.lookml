- view: facebook_ads_insights_age_and_gender_101441173373823__website_ctr
  sql_table_name: facebook.facebook_ads_insights_age_and_gender_101441173373823__website_ctr
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

  - dimension: _rjm_source_key_age
    type: string
    sql: ${TABLE}._rjm_source_key_age

  - dimension: _rjm_source_key_campaign_id
    type: string
    sql: ${TABLE}._rjm_source_key_campaign_id

  - dimension: _rjm_source_key_date_start
    type: string
    sql: ${TABLE}._rjm_source_key_date_start

  - dimension: _rjm_source_key_gender
    type: string
    sql: ${TABLE}._rjm_source_key_gender

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

