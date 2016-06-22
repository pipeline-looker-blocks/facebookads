- view: facebook_ads_insights_placement_and_device
  sql_table_name: facebook.facebook_ads_insights_placement_and_device_101441173373823
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

  - dimension: cost_per_inline_link_click01932ca7b21eb72c1e10d6cb906d6b36
    type: number
    sql: ${TABLE}."cost_per_inline_link_click#01932ca7b21eb72c1e10d6cb906d6b36"

  - dimension: cost_per_inline_link_click05cec3782a490c66450bf4e1189501d5
    type: number
    sql: ${TABLE}."cost_per_inline_link_click#05cec3782a490c66450bf4e1189501d5"

  - dimension: cost_per_inline_post_engagement030e37f96d092f6c15fb7a41521aa227
    type: number
    sql: ${TABLE}."cost_per_inline_post_engagement#030e37f96d092f6c15fb7a41521aa227"

  - dimension: cost_per_inline_post_engagementb9ab6d658c7c6e740e14ecb3dc29cc24
    type: number
    sql: ${TABLE}."cost_per_inline_post_engagement#b9ab6d658c7c6e740e14ecb3dc29cc24"

  - dimension: cost_per_total_actionb0a03a58e5208dd36f40763db0e6f40c
    type: number
    sql: ${TABLE}."cost_per_total_action#b0a03a58e5208dd36f40763db0e6f40c"

  - dimension: cost_per_total_actionba91d2eb467e6640c3cfd93d4982ffac
    type: number
    sql: ${TABLE}."cost_per_total_action#ba91d2eb467e6640c3cfd93d4982ffac"

  - dimension: cost_per_unique_click36f150a496864f4cac200309ab821f20
    type: number
    sql: ${TABLE}."cost_per_unique_click#36f150a496864f4cac200309ab821f20"

  - dimension: cost_per_unique_clickc857045f10c6a4083f523a9981319b87
    type: number
    sql: ${TABLE}."cost_per_unique_click#c857045f10c6a4083f523a9981319b87"

  - dimension: cost_per_unique_inline_link_click642bc76819bf60d45bab4e4a16f2673c
    type: number
    sql: ${TABLE}."cost_per_unique_inline_link_click#642bc76819bf60d45bab4e4a16f2673c"

  - dimension: cost_per_unique_inline_link_click7af06d1d4f19331085c73be6782246ce
    type: number
    sql: ${TABLE}."cost_per_unique_inline_link_click#7af06d1d4f19331085c73be6782246ce"

  - dimension: cpc90542b337cc50f4babe27b54ec43a605
    type: number
    sql: ${TABLE}."cpc#90542b337cc50f4babe27b54ec43a605"

  - dimension: cpcd75646415ce5ad1014600984868ecde6
    type: number
    sql: ${TABLE}."cpc#d75646415ce5ad1014600984868ecde6"

  - dimension: cpm2f5703fe300c4c226decce713fb6b35f
    type: number
    sql: ${TABLE}."cpm#2f5703fe300c4c226decce713fb6b35f"

  - dimension: cpmd10d4a65eb6816330baae5c949f744cf
    type: number
    sql: ${TABLE}."cpm#d10d4a65eb6816330baae5c949f744cf"

  - dimension: cpp3766aac26f07ed8e5f9af44ec7d4e404
    type: number
    sql: ${TABLE}."cpp#3766aac26f07ed8e5f9af44ec7d4e404"

  - dimension: cpp726deb3be9664acc1a33f68c1ed471af
    type: number
    sql: ${TABLE}."cpp#726deb3be9664acc1a33f68c1ed471af"

  - dimension: ctr05b875cc75dbeba17e1cc1148362b070
    type: number
    sql: ${TABLE}."ctr#05b875cc75dbeba17e1cc1148362b070"

  - dimension: ctr69f44db17f23c67e59952e78b5639634
    type: number
    sql: ${TABLE}."ctr#69f44db17f23c67e59952e78b5639634"

  - dimension_group: date_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_start

  - dimension_group: date_stop
    type: time
    timeframes: [time, date, week, month]
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

  - dimension: frequency33293097ed38c9474c481364a5af6fe7
    type: number
    sql: ${TABLE}."frequency#33293097ed38c9474c481364a5af6fe7"

  - dimension: frequency9e8942e00c656a10039dd47b2558b185
    type: number
    sql: ${TABLE}."frequency#9e8942e00c656a10039dd47b2558b185"

  - dimension: impression_device
    type: string
    sql: ${TABLE}.impression_device

  - dimension: impressions
    type: number
    sql: ${TABLE}.impressions

  - dimension: inline_link_click_ctrbba584e0926a49cd69a4ddb7b53ac72c
    type: number
    sql: ${TABLE}."inline_link_click_ctr#bba584e0926a49cd69a4ddb7b53ac72c"

  - dimension: inline_link_click_ctrdd6726ab933a189923547dc6bffa7558
    type: number
    sql: ${TABLE}."inline_link_click_ctr#dd6726ab933a189923547dc6bffa7558"

  - dimension: inline_link_clicks
    type: number
    sql: ${TABLE}.inline_link_clicks

  - dimension: inline_post_engagement
    type: number
    sql: ${TABLE}.inline_post_engagement

  - dimension: placement
    type: string
    sql: ${TABLE}.placement

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

  - dimension: spend9f4eb4b1f15df4626f9944164642e186
    type: number
    sql: ${TABLE}."spend#9f4eb4b1f15df4626f9944164642e186"

  - dimension: spendd14b43ef070a8c5f034f1bb77365addc
    type: number
    sql: ${TABLE}."spend#d14b43ef070a8c5f034f1bb77365addc"

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

  - dimension: unique_ctrde2cc78c3d04232015542fb4d5b75dce
    type: number
    sql: ${TABLE}."unique_ctr#de2cc78c3d04232015542fb4d5b75dce"

  - dimension: unique_ctrf2ddb5dedb254de6a64277b65ce3e39a
    type: number
    sql: ${TABLE}."unique_ctr#f2ddb5dedb254de6a64277b65ce3e39a"

  - dimension: unique_impressions
    type: number
    sql: ${TABLE}.unique_impressions

  - dimension: unique_inline_link_click_ctre963e1e4e1f43888ae87c79cf2d6bb9e
    type: number
    sql: ${TABLE}."unique_inline_link_click_ctr#e963e1e4e1f43888ae87c79cf2d6bb9e"

  - dimension: unique_inline_link_click_ctrf2b1054bd69f604efcd043f9d3ee8c3e
    type: number
    sql: ${TABLE}."unique_inline_link_click_ctr#f2b1054bd69f604efcd043f9d3ee8c3e"

  - dimension: unique_inline_link_clicks
    type: number
    sql: ${TABLE}.unique_inline_link_clicks

  - dimension: unique_link_clicks_ctraa48a871d5a64cab44a6be0bcd25a441
    type: number
    sql: ${TABLE}."unique_link_clicks_ctr#aa48a871d5a64cab44a6be0bcd25a441"

  - dimension: unique_link_clicks_ctrc63f5ee187771191a56460f19f2ae6e4
    type: number
    sql: ${TABLE}."unique_link_clicks_ctr#c63f5ee187771191a56460f19f2ae6e4"

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

