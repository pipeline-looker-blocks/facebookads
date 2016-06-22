- view: facebook_ads
  sql_table_name: facebook.facebook_ads_101441173373823
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: account_id
    type: string
    sql: ${TABLE}.account_id

  - dimension: adset_id
    type: string
    sql: ${TABLE}.adset_id

  - dimension: bid_info__actions
    type: number
    sql: ${TABLE}.bid_info__actions

  - dimension: bid_info__clicks
    type: number
    sql: ${TABLE}.bid_info__clicks

  - dimension: bid_info__reach
    type: number
    sql: ${TABLE}.bid_info__reach

  - dimension: bid_type
    type: string
    sql: ${TABLE}.bid_type

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.campaign_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_time

  - dimension: creative__id
    type: string
    sql: ${TABLE}.creative__id

  - dimension: effective_status
    type: string
    sql: ${TABLE}.effective_status

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: targeting__age_max
    type: number
    sql: ${TABLE}.targeting__age_max

  - dimension: targeting__age_min
    type: number
    sql: ${TABLE}.targeting__age_min

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_time

  - measure: count
    type: count
    drill_fields: [id, name]

