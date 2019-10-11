view: ad_actions_by_age_and_gender {
  sql_table_name: facebook_data.facebook_ads_insights_age_and_gender_101441173373823__actions ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}._sdc_source_key_ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}._sdc_source_key_adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}._sdc_source_key_campaign_id ;;
  }

  dimension: date_start {
    type: string
    sql: ${TABLE}._sdc_source_key_date_start ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}._sdc_source_key_gender ;;
  }

  dimension: action_destination_by_age_and_gender {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_type_by_age_and_gender {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value_by_age_and_gender {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count_by_age_and_gender {
    type: count
    drill_fields: []
  }
}
