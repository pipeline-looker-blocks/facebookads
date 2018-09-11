#The ads_insights table contains entries for each campaign/set/ad combination for each day, along with detailed statistics.
view: ad_insights {
  sql_table_name: facebook_data.facebook_ads_insights_101441173373823 ;;
  # API documentation: https://developers.facebook.com/docs/marketing-api/insights/fields/v2.6
  
   dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${ad_id}||${adset_id}||${campaign_id}||${start_raw} ;;
  }
  
  ## STANDARD FIELDS

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${campaigns.name} ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost_per_total_action {
    type: number
    sql: ${TABLE}.cost_per_total_action ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }

  dimension: cpp {
    type: number
    sql: ${TABLE}.cpp ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: stop {
    type: time
    timeframes: [raw, time, date, week, month]
    sql: ${TABLE}.date_stop ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
    value_format_name: usd
  }

  dimension: total_action_value {
    type: number
    sql: ${TABLE}.total_action_value ;;
  }

  dimension: actions {
    type: number
    sql: ${TABLE}.total_actions ;;
  }

  dimension: website_clicks {
    type: number
    sql: ${TABLE}.website_clicks ;;
  }

  ## AGGREGATED MEASURES

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.total_actions ;;
    drill_fields: [campaign_id]
  }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: people_taking_action {
    description: "The number of unique people who took an action such as liking your Page or installing your app as a result of your ad. For example, if the same person likes and comments on a post, they will be counted as 1 unique person."
    type: sum
    sql: ${TABLE}.total_unique_actions ;;
  }

  measure: total_inline_link_clicks {
    type: sum
    sql: ${TABLE}.inline_link_clicks ;;
  }

  #### NOTE: you will need to use the frequency column that appears in your dataset.

  measure: avg_frequency {
    description: "the average number of times your ad was served to each person"
    type: average
    sql: ${TABLE}.frequency ;;
  }

  #### NOTE: you will need to use the cpm column that appears in your dataset.

  measure: avg_cpm {
    description: "The average cost you've paid to have 1,000 impressions on your ad."
    type: average
    sql: ${TABLE}.cpm ;;
    value_format_name: usd
  }

  #### NOTE: you will need to use the cpp column that appears in your dataset.

  measure: avg_cpp {
    description: "The average cost you've paid to have your ad served to 1,000 unique people."
    type: average
    sql: ${TABLE}.cpp ;;
    value_format_name: usd
  }

  #### NOTE: you will need to use the spend column that appears in your dataset.

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
    value_format_name: usd
  }

  #### NOTE: you will need to use the ctr column that appears in your dataset.

  measure: avg_ctr {
    type: average
    sql: ${TABLE}.ctr ;;
  }

  #### NOTE: you will need to use the cpc column that appears in your dataset.

  measure: avg_cpc {
    type: average
    sql: ${TABLE}.cpc ;;
    value_format_name: usd
  }

  #### NOTE: you will need to use the inline link click ctr column that appears in your dataset.

  measure: avg_inline_link_click_ctr {
    type: average
    sql: ${TABLE}.inline_link_click_ctr ;;
  }

  #### NOTE: you will need to use the cost per inline link click column that appears in your dataset.

  measure: avg_cost_per_inline_link_click {
    type: average
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }
}

##########################################################################################################


## FOR MORE GRANULAR ANALYSIS

#   - dimension: app_store_clicks
#     type: number
#     sql: ${TABLE}.app_store_clicks
#
#   - dimension: call_to_action_clicks
#     type: number
#     sql: ${TABLE}.call_to_action_clicks
#
#   - dimension: canvas_avg_view_percent
#     description: The average percentage of the Canvas seen
#     type: number
#     sql: ${TABLE}.canvas_avg_view_percent
#
#   - dimension: canvas_avg_view_time
#     description: The average time spent in seconds, within a Canvas unit
#     type: number
#     sql: ${TABLE}.canvas_avg_view_time
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

## UNIQUE AND INLINE FIELDS

#   - dimension: cost_per_unique_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_click#314b575e612d4acb829c87b1d81b7bbd"
#
#   - dimension: cost_per_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_inline_link_click#01932ca7b21eb72c1e10d6cb906d6b36"
#
#   - dimension: cost_per_inline_post_engagement
#     type: number
#     sql: ${TABLE}."cost_per_inline_post_engagement#030e37f96d092f6c15fb7a41521aa227"
#
#   - dimension: cost_per_unique_inline_link_click
#     type: number
#     sql: ${TABLE}."cost_per_unique_inline_link_click#46c5d5a01cf35fb31482787435b028ff"
#
#   - dimension: inline_link_click_ctr2cf3b3cbfc8c2745f13ab21fdefd5ce7
#     type: number
#     sql: ${TABLE}."inline_link_click_ctr#2cf3b3cbfc8c2745f13ab21fdefd5ce7"
#
#   - dimension: inline_link_clicks
#     type: number
#     sql: ${TABLE}.inline_link_clicks
#
#   - dimension: inline_post_engagement
#     type: number
#     sql: ${TABLE}.inline_post_engagement
#
#   - dimension: relevance_score__negative_feedback
#     type: string
#     sql: ${TABLE}.relevance_score__negative_feedback
#
#   - dimension: relevance_score__positive_feedback
#     type: string
#     sql: ${TABLE}.relevance_score__positive_feedback
#
#   - dimension: relevance_score__score
#     type: number
#     sql: ${TABLE}.relevance_score__score
#
#   - dimension: relevance_score__status
#     type: string
#     sql: ${TABLE}.relevance_score__status
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

#   - dimension: total_unique_actions
#     description: The number of unique people who took an action such as liking your Page or installing your app as a result of your ad. For example, if the same person likes and comments on a post, they will be counted as 1 unique person.
#     type: number
#     sql: ${TABLE}.total_unique_actions
#
#   - dimension: unique_clicks
#     type: number
#     sql: ${TABLE}.unique_clicks
#
#   - dimension: unique_ctr
#     type: number
#     sql: ${TABLE}."unique_ctr#8eb4c1cfa3ad8ba37f49e372cf5d1cd3"
#
#   - dimension: unique_impressions
#     type: number
#     sql: ${TABLE}.unique_impressions
#
#   - dimension: unique_inline_link_click_ctr
#     type: number
#     sql: ${TABLE}."unique_inline_link_click_ctr#03ac8649f6f3371be49fa980213fe6cc"
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
