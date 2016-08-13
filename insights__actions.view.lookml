- view: ad_action_insights
  sql_table_name: looker_facebook.facebook_ads_insights_x__actions
  fields:

#   - dimension: 1d_click
#     type: number
#     sql: ${TABLE}.1d_click
# 
#   - dimension: 1d_view
#     type: number
#     sql: ${TABLE}.1d_view
# 
#   - dimension: 28d_click
#     type: number
#     sql: ${TABLE}.28d_click
# 
#   - dimension: 28d_view
#     type: number
#     sql: ${TABLE}.28d_view
# 
#   - dimension: 7d_click
#     type: number
#     sql: ${TABLE}.7d_click
# 
#   - dimension: 7d_view
#     type: number
#     sql: ${TABLE}.7d_view

  - dimension: ad_id
    type: string
    sql: ${TABLE}._rjm_source_key_ad_id

  - dimension: adset_id
    type: string
    sql: ${TABLE}._rjm_source_key_adset_id

  - dimension: campaign_id
    type: string
    sql: ${TABLE}._rjm_source_key_campaign_id

  - dimension_group: date_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}._rjm_source_key_date_start

  - dimension: action_destination
    type: string
    sql: ${TABLE}.action_destination

  - dimension: action_type
    type: string
    sql: ${TABLE}.action_type

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: []
    
  - measure: post_likes
    type: sum
    sql: ${TABLE}.value
    filters: 
      action_type: 'post_like'

  - measure: page_likes
    type: sum
    sql: ${TABLE}.value
    filters: 
      action_type: 'like'
      
  - measure: post_comments
    type: sum
    sql: ${TABLE}.value
    filters: 
      action_type: 'comment'
      
  - measure: post_shares
    type: sum
    sql: ${TABLE}.value
    filters: 
      action_type: 'post'
      
  - measure: link_clicks
    type: sum
    sql: ${TABLE}.value
    filters: 
      action_type: 'link_click'
      
  - measure: total_actions
    type: sum
    sql: ${TABLE}.value
    
  - dimension: campaign_objective
    type: string
    sql: ${campaigns.objective}
    
  - dimension: campaign_name
    type: string
    sql: ${campaigns.name}
      
      