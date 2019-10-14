view: ad_insights {
  sql_table_name: facebook_data.facebook_ads_insights_101441173373823 ;;
  # API documentation: https://developers.facebook.com/docs/marketing-api/insights/fields/v2.6

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

  dimension_group: date_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
    type: time
    timeframes: [time, date, week, month]
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
  }

  measure: total_actions {
    type: sum
    sql: ${actions} ;;
    drill_fields: [detail*]
  }

  measure: total_reach {
    type: sum
    sql: ${reach} ;;
    drill_fields: [detail*]
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [detail*]
  }

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
    drill_fields: [detail*]
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
    sql: ${frequency} ;;
    drill_fields: [detail*]
  }

  #### NOTE: you will need to use the cpm column that appears in your dataset.

  measure: avg_cpm {
    description: "The average cost you've paid to have 1,000 impressions on your ad."
    type: average
    sql: ${cpm} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  #### NOTE: you will need to use the cpp column that appears in your dataset.

  measure: avg_cpp {
    description: "The average cost you've paid to have your ad served to 1,000 unique people."
    type: average
    sql: ${cpp} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  #### NOTE: you will need to use the spend column that appears in your dataset.

  measure: total_spend {
    type: sum
    sql: ${spend} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: avg_ctr {
    type: number
    sql: ${total_clicks}/nullif(${total_impressions},0);;
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  measure: avg_cpc {
    type: number
    sql: ${total_spend}/nullif(${total_clicks},0) ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  # #### NOTE: you will need to use the ctr column that appears in your dataset.

  # measure: avg_ctr {
  #   type: average
  #   sql: ${TABLE}.ctr ;;
  # }

  # #### NOTE: you will need to use the cpc column that appears in your dataset.

  # measure: avg_cpc {
  #   type: average
  #   sql: ${TABLE}.cpc ;;
  #   value_format_name: usd
  # }

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

  set: detail {
    fields: [campaign_id, campaign_name, total_clicks, total_spend, total_impressions, total_reach, avg_frequency]
  }
}
