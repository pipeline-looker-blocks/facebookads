- view: facebook_ads_insights_age_and_gender
  sql_table_name: facebook.facebook_ads_insights_age_and_gender_101441173373823
  fields:

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: account_id
    type: string
    sql: ${TABLE}.account_id

  - dimension: ad_id
    type: string
    sql: ${TABLE}.ad_id

  - dimension: adset_id
    type: string
    sql: ${TABLE}.adset_id

  - dimension: age
    type: string
    sql: ${TABLE}.age

  - dimension: app_store_clicks
    type: number
    sql: ${TABLE}.app_store_clicks

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.campaign_id

  - dimension: canvas_avg_view_percent
    type: number
    sql: ${TABLE}.canvas_avg_view_percent

  - dimension: canvas_avg_view_time
    type: number
    sql: ${TABLE}.canvas_avg_view_time

  - dimension: clicks
    type: number
    sql: ${TABLE}.clicks

  - dimension: cost_per_estimated_ad_recallers
    type: number
    sql: ${TABLE}.cost_per_estimated_ad_recallers

  - dimension: cost_per_inline_link_click
    type: number
    sql: ${TABLE}.cost_per_inline_link_click

  - dimension: cost_per_inline_post_engagement
    type: number
    sql: ${TABLE}.cost_per_inline_post_engagement

  - dimension: cost_per_total_action
    type: number
    sql: ${TABLE}.cost_per_total_action

  - dimension: cost_per_unique_click
    type: number
    sql: ${TABLE}.cost_per_unique_click

  - dimension: cost_per_unique_inline_link_click
    type: number
    sql: ${TABLE}.cost_per_unique_inline_link_click

  - dimension: cpc
    type: number
    sql: ${TABLE}.cpc

  - dimension: cpm
    type: number
    sql: ${TABLE}.cpm

  - dimension: cpp
    type: number
    sql: ${TABLE}.cpp

  - dimension: ctr
    type: number
    sql: ${TABLE}.ctr

  - dimension: date_start
    type: string
    sql: ${TABLE}.date_start

  - dimension: date_stop
    type: string
    sql: ${TABLE}.date_stop

  - dimension: deeplink_clicks
    type: number
    sql: ${TABLE}.deeplink_clicks

  - dimension: estimated_ad_recall_rate
    type: number
    sql: ${TABLE}.estimated_ad_recall_rate

  - dimension: estimated_ad_recall_rate_lower_bound
    type: number
    sql: ${TABLE}.estimated_ad_recall_rate_lower_bound

  - dimension: estimated_ad_recall_rate_upper_bound
    type: number
    sql: ${TABLE}.estimated_ad_recall_rate_upper_bound

  - dimension: frequency
    type: number
    sql: ${TABLE}.frequency

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: impressions
    type: string
    sql: ${TABLE}.impressions

  - dimension: inline_link_click_ctr
    type: number
    sql: ${TABLE}.inline_link_click_ctr

  - dimension: inline_link_clicks
    type: number
    sql: ${TABLE}.inline_link_clicks

  - dimension: inline_post_engagement
    type: number
    sql: ${TABLE}.inline_post_engagement

  - dimension: reach
    type: number
    sql: ${TABLE}.reach

  - dimension: social_clicks
    type: number
    sql: ${TABLE}.social_clicks

  - dimension: social_impressions
    type: number
    sql: ${TABLE}.social_impressions

  - dimension: social_reach
    type: number
    sql: ${TABLE}.social_reach

  - dimension: spend
    type: number
    sql: ${TABLE}.spend

  - dimension: total_action_value
    type: number
    sql: ${TABLE}.total_action_value

  - dimension: total_actions
    type: number
    sql: ${TABLE}.total_actions

  - dimension: total_unique_actions
    type: number
    sql: ${TABLE}.total_unique_actions

  - dimension: unique_clicks
    type: number
    sql: ${TABLE}.unique_clicks

  - dimension: unique_ctr
    type: number
    sql: ${TABLE}.unique_ctr

  - dimension: unique_impressions
    type: number
    sql: ${TABLE}.unique_impressions

  - dimension: unique_inline_link_click_ctr
    type: number
    sql: ${TABLE}.unique_inline_link_click_ctr

  - dimension: unique_inline_link_clicks
    type: number
    sql: ${TABLE}.unique_inline_link_clicks

  - dimension: unique_link_clicks_ctr
    type: number
    sql: ${TABLE}.unique_link_clicks_ctr

  - dimension: unique_social_clicks
    type: number
    sql: ${TABLE}.unique_social_clicks

  - dimension: unique_social_impressions
    type: number
    sql: ${TABLE}.unique_social_impressions

  - dimension: website_clicks
    type: number
    sql: ${TABLE}.website_clicks

  - measure: count
    type: count
    drill_fields: []

