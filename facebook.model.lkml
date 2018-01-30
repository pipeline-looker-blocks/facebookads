connection: "stitch_vandelay"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: country_coordinates {}

explore: ads {
  join: campaigns {
    type: left_outer
    sql_on: ${ads.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ads.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: ad_insights {
    type: left_outer
    sql_on: ${ads.id} = ${ad_insights.ad_id} ;;
    relationship: many_to_one
  }

  join: adcreative {
    type: left_outer
    sql_on: ${ads.creative_id} = ${adcreative.id} ;;
    relationship: many_to_one
  }

  join: creativeutm {
    type: left_outer
    sql_on: ${ads.creative_id} = ${creativeutm.creative_id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_action_insights {
  join: ads {
    type: left_outer
    sql_on: ${ad_action_insights.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_action_insights.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_action_insights.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_age_and_gender {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_age_and_gender {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_country {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_country.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights_by_country.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights_by_country.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: country_coordinates {
    type: left_outer
    sql_on: ${ad_insights_by_country.country} = ${country_coordinates.country} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_country {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_country.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_country.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_country.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_placement_and_device {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_placement_and_device {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}

explore: adsets {
  join: campaigns {
    type: left_outer
    sql_on: ${adsets.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }


}

explore: campaigns {}

explore: adcreative {}
