view: ad_insights_by_placement_and_device {
  sql_table_name: facebook_data.facebook_ads_insights_placement_and_device_101441173373823 ;;
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

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cost {
    type:  number
    sql:  ${cpc}*${clicks} ;;

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

  dimension: impression_device {
    type: string
    sql: ${TABLE}.impression_device ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: actions {
    type: number
    sql: ${TABLE}.total_actions ;;
  }

  ## AGGREGATE MEASURES

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [impression_device, placement]
  }

  measure: total_cost {
    type: sum
    sql:  ${cost} ;;
    value_format_name: decimal_2
  }

  measure: avg_cpc {
    label: "Average CPC"
    type:  number
    sql:  ${total_cost} / nullif(${total_clicks},0) ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

#   measure: avg_cpc {
#     label: "Average CPC"
#     type: average
#     sql: ${TABLE}.cpc ;;
#     value_format_name: decimal_2
#   }

  measure: avg_cpm {
    label: "Average CPM"
    type: average
    sql: ${TABLE}.cpm ;;
    value_format_name: usd
    }

  measure: avg_cpp {
    label: "Average CPP"
    type: average
    sql: ${TABLE}.cpp ;;
    value_format_name: usd
    }

  measure: avg_ctr {
    label: "Average CTR"
    type: average
    sql: ${TABLE}.ctr ;;
    value_format_name: decimal_2
  }

  measure: avg_frequency {
    label: "Average Frequency"
    type: average
    sql: ${TABLE}.frequency ;;
    value_format_name: decimal_2
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
    drill_fields: [impression_device, placement]
  }

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
    drill_fields: [impression_device, placement]
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.total_actions ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [impression_device, placement, total_clicks, total_cost]
  }

}
