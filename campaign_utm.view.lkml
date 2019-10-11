view: campaign_utm {
  derived_table: {
    sql:
      SELECT
        id,
        regexp_matches(object_story_spec__link_data__link,'utm_campaign=([^&]*)') as utm_campaign
      FROM facebook_data.facebook_adcreative_101441173373823
      ;;
  }
  # later, dimension declarations reference the derived column(s)

  dimension: creative_id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }
}
