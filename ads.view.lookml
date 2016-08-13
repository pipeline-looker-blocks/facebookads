- view: ads
  sql_table_name: looker_facebook.facebook_ads_x
  fields:
  
# API documentation here: https://developers.facebook.com/docs/marketing-api/reference/adgroup

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: account_id
    type: string
    sql: ${TABLE}.account_id

  - dimension: adset_id
    type: string
    sql: ${TABLE}.adset_id

#   - dimension: bid_info__actions
#     description:
#     type: number
#     sql: ${TABLE}.bid_info__actions
# 
#   - dimension: bid_info__clicks
#     description:
#     type: number
#     sql: ${TABLE}.bid_info__clicks
# 
#   - dimension: bid_info__reach
#     description:
#     type: number
#     sql: ${TABLE}.bid_info__reach
# 
#   - dimension: bid_type
#     description:
#     type: string
#     sql: ${TABLE}.bid_type

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.campaign_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_time

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

  - measure: count
    type: count
    drill_fields: [id, name]