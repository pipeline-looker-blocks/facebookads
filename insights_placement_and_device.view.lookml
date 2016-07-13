- view: ad_insights_by_placement_and_device
  sql_table_name: facebook.facebook_ads_insights_placement_and_device_101441173373823
  fields:

## STANDARD FIELDS

  - dimension: account_id
    type: string
    sql: ${TABLE}.account_id

  - dimension: ad_id
    type: string
    sql: ${TABLE}.ad_id

  - dimension: adset_id
    type: string
    sql: ${TABLE}.adset_id

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.campaign_id

  - dimension: clicks
    type: number
    sql: ${TABLE}.clicks
    
  - dimension: cpc
    type: number
    sql: ${TABLE}."cpc#90542b337cc50f4babe27b54ec43a605"

  - dimension: cpm
    type: number
    sql: ${TABLE}."cpm#d10d4a65eb6816330baae5c949f744cf"

  - dimension: cpp
    type: number
    sql: ${TABLE}."cpp#3766aac26f07ed8e5f9af44ec7d4e404"

  - dimension: ctr
    type: number
    sql: ${TABLE}."ctr#05b875cc75dbeba17e1cc1148362b070"
    
  - dimension_group: date_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_start

  - dimension_group: date_stop
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_stop
    
  - dimension: frequency
    type: number
    sql: ${TABLE}."frequency#9e8942e00c656a10039dd47b2558b185"
    
  - dimension: impression_device
    type: string
    sql: ${TABLE}.impression_device

  - dimension: impressions
    type: number
    sql: ${TABLE}.impressions    
    
  - dimension: placement
    type: string
    sql: ${TABLE}.placement

  - dimension: reach
    type: number
    sql: ${TABLE}.reach
    
    
  - dimension: spend
    type: number
    sql: ${TABLE}."spend#9f4eb4b1f15df4626f9944164642e186"

  - dimension: actions
    type: number
    sql: ${TABLE}.total_actions
    
## AGGREGATE MEASURES

  - measure: count
    type: count
    drill_fields: []
    
  - measure: total_clicks
    type: sum
    sql: ${TABLE}.clicks
    drill_fields: [impression_device, placement]
    
  - measure: avg_cpc
    type: avg
    sql: ${TABLE}."cpc#90542b337cc50f4babe27b54ec43a605"

  - measure: avg_cpm
    type: avg
    sql: ${TABLE}."cpm#d10d4a65eb6816330baae5c949f744cf"

  - measure: avg_cpp
    type: avg
    sql: ${TABLE}."cpp#3766aac26f07ed8e5f9af44ec7d4e404"

  - measure: avg_ctr
    type: avg
    sql: ${TABLE}."ctr#05b875cc75dbeba17e1cc1148362b070"
    
  - measure: avg_frequency
    type: avg
    sql: ${TABLE}."frequency#9e8942e00c656a10039dd47b2558b185"
    
  - measure: total_impressions
    type: sum
    sql: ${TABLE}.impressions
    
  - measure: total_reach
    type: sum
    sql: ${TABLE}.reach
    drill_fields: [impression_device, placement]
    
  - measure: total_spend
    type: sum
    sql: ${TABLE}."spend#9f4eb4b1f15df4626f9944164642e186"
    drill_fields: [impression_device, placement]
    
  - measure: total_actions
    type: sum
    sql: ${TABLE}.total_actions
    drill_fields: [impression_device, placement]

    
###################################################################################################
    
    
## ADDITIONAL FIELDS

#   - dimension: app_store_clicks
#     type: number
#     sql: ${TABLE}.app_store_clicks
# 
#   - dimension: canvas_avg_view_percent
#     type: number
#     sql: ${TABLE}.canvas_avg_view_percent
# 
#   - dimension: canvas_avg_view_time
#     type: number
#     sql: ${TABLE}.canvas_avg_view_time
# 
#   - dimension: cost_per_estimated_ad_recallers
#     type: number
#     sql: ${TABLE}.cost_per_estimated_ad_recallers
# 
#   - dimension: cost_per_total_action
#     type: number
#     sql: ${TABLE}."cost_per_total_action#b0a03a58e5208dd36f40763db0e6f40c"
#     
#   - dimension: deeplink_clicks
#     type: number
#     sql: ${TABLE}.deeplink_clicks
# 
#   - dimension: estimated_ad_recall_rate
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate
# 
#   - dimension: estimated_ad_recall_rate_lower_bound
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate_lower_bound
# 
#   - dimension: estimated_ad_recall_rate_upper_bound
#     type: number
#     sql: ${TABLE}.estimated_ad_recall_rate_upper_bound
#     
#   - dimension: social_clicks
#     type: number
#     sql: ${TABLE}.social_clicks
# 
#   - dimension: social_impressions
#     type: number
#     sql: ${TABLE}.social_impressions
# 
#   - dimension: social_reach
#     type: number
#     sql: ${TABLE}.social_reach
# 
#   - dimension: total_action_value
#     type: number
#     sql: ${TABLE}.total_action_value
#     
#   - dimension: website_clicks
#     type: number
#     sql: ${TABLE}.website_clicks

    
## INLINE AND UNIQUE

#   - dimension: cost_per_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_inline_link_click#01932ca7b21eb72c1e10d6cb906d6b36"
# 
#   - dimension: cost_per_inline_post_engagement
#     type: number
#     sql: ${TABLE}."cost_per_inline_post_engagement#b9ab6d658c7c6e740e14ecb3dc29cc24"
# 
#   - dimension: cost_per_unique_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_click#36f150a496864f4cac200309ab821f20"
# 
#   - dimension: cost_per_unique_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_inline_link_click#642bc76819bf60d45bab4e4a16f2673c"
# 
#   - dimension: inline_link_click_ctr
#     type: number
#     sql: ${TABLE}."inline_link_click_ctr#bba584e0926a49cd69a4ddb7b53ac72c"
# 
#   - dimension: inline_link_clicks
#     type: number
#     sql: ${TABLE}.inline_link_clicks
# 
#   - dimension: inline_post_engagement
#     type: number
#     sql: ${TABLE}.inline_post_engagement
# 
#   - dimension: total_unique_actions
#     type: number
#     sql: ${TABLE}.total_unique_actions
# 
#   - dimension: unique_clicks
#     type: number
#     sql: ${TABLE}.unique_clicks
# 
#   - dimension: unique_ctr
#     type: number
#     sql: ${TABLE}."unique_ctr#de2cc78c3d04232015542fb4d5b75dce"
# 
#   - dimension: unique_impressions
#     type: number
#     sql: ${TABLE}.unique_impressions
# 
#   - dimension: unique_inline_link_click_ctr
#     type: number
#     sql: ${TABLE}."unique_inline_link_click_ctr#e963e1e4e1f43888ae87c79cf2d6bb9e"
# 
#   - dimension: unique_inline_link_clicks
#     type: number
#     sql: ${TABLE}.unique_inline_link_clicks
# 
#   - dimension: unique_link_clicks_ctr
#     type: number
#     sql: ${TABLE}."unique_link_clicks_ctr#aa48a871d5a64cab44a6be0bcd25a441"
# 
#   - dimension: unique_social_clicks
#     type: number
#     sql: ${TABLE}.unique_social_clicks
# 
#   - dimension: unique_social_impressions
#     type: number
#     sql: ${TABLE}.unique_social_impressions