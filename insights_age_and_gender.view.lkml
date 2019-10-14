view: ad_insights_by_age_and_gender {
  sql_table_name: facebook_data.facebook_ads_insights_age_and_gender_101441173373823 ;;
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

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
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

  dimension: date_start {
    type: string
    sql: ${TABLE}.date_start ;;
  }

  dimension: date_stop {
    type: string
    sql: ${TABLE}.date_stop ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: impressions {
    type: string
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

  dimension: website_clicks {
    type: number
    sql: ${TABLE}.website_clicks ;;
  }

  ## AGGREGATED MEASURES

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: avg_cpc {
    type: number
    sql: ${total_spend} / nullif(${total_clicks},0) ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

#   measure: avg_cpc {
#     type: average
#     sql: ${TABLE}.cpc ;;
#     value_format_name: usd
#   }

  measure: avg_cpm {
    type: average
    sql: ${cpm} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: avg_cpp {
    type: average
    sql: ${cpp} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: avg_ctr {
    type: number
    sql: ${total_clicks}/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
    drill_fields: [detail*]
  }

#   measure: avg_ctr {
#     type: average
#     sql: ${TABLE}.ctr ;;
#     value_format_name: decimal_2
#   }

  measure: avg_frequency {
    type: average
    sql: ${frequency} ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: total_reach {
    type: sum
    sql: ${reach} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: total_spend {
    type: sum
    sql: ${spend} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  set: detail {
    fields: [age, gender, ad_id, campaign_id, campaign.name, total_spend, total_clicks, total_impressions, total_reach, avg_frequency, avg_ctr, avg_cpc]
  }

}
