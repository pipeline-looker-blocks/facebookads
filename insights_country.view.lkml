view: ad_insights_by_country {
  sql_table_name: facebook_data.facebook_ads_insights_country_101441173373823 ;;
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

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  ## if using coordinates in `country_coordinates` view
  #   - dimension: country_location
  #     type: location
  #     sql_latitude: ${country_coordinates.latitude}
  #     sql_longitude: ${country_coordinates.longitude}

  dimension: country_iso {
    type: string
    map_layer_name: countries
    sql: ${country_coordinates.country_iso} ;;
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

  ## AGGREGATE MEASURES


  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: avg_cpc {
    type: average
    sql: ${TABLE}.cpc ;;
  }

  measure: avg_cpm {
    type: average
    sql: ${TABLE}.cpm ;;
  }

  measure: avg_cpp {
    type: average
    sql: ${TABLE}.cpp ;;
  }

  measure: avg_ctr {
    type: average
    sql: ${TABLE}.ctr ;;
  }

  measure: avg_frequency {
    type: average
    sql: ${TABLE}.frequency ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
  }

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.total_actions ;;
  }
}
