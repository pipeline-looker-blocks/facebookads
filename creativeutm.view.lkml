view: creativeutm {
  derived_table: {
    sql:            # get utm for campaigns
      SELECT
        id,
        split_part((regexp_substr(object_story_spec__link_data__link,'campaign=([^&]*)[^&]')),'=',2) as utm_campaign
      FROM adcreative
      ;;
  }
  # later, dimension declarations reference the derived column(s)

  dimension: creative_id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }
}
