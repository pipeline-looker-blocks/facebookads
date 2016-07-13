- connection: pipeline

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: country_coordinates

- explore: ads
  joins:
    - join: campaigns
      type: left_outer 
      sql_on: ${ads.campaign_id} = ${campaigns.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ads.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: ad_insights
      type: left_outer 
      sql_on: ${ads.id} = ${ad_insights.ad_id}
      relationship: many_to_one

- explore: ad_insights
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_insights.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_insights.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_insights.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_action_insights
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_action_insights.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_action_insights.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_action_insights.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_insights_by_age_and_gender
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_insights_by_age_and_gender.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_insights_by_age_and_gender.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_insights_by_age_and_gender.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_actions_by_age_and_gender
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_actions_by_age_and_gender.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_actions_by_age_and_gender.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_actions_by_age_and_gender.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_insights_by_country
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_insights_by_country.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_insights_by_country.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_insights_by_country.campaign_id} = ${campaigns.id}
      relationship: many_to_one
      
    - join: country_coordinates
      type: left_outer
      sql_on: ${ad_insights_by_country.country} = ${country_coordinates.country}
      relationship: many_to_one

- explore: ad_actions_by_country
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_actions_by_country.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_actions_by_country.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_actions_by_country.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_insights_by_placement_and_device
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_insights_by_placement_and_device.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_insights_by_placement_and_device.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_insights_by_placement_and_device.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: ad_actions_by_placement_and_device
  joins:
    - join: ads
      type: left_outer 
      sql_on: ${ad_actions_by_placement_and_device.ad_id} = ${ads.id}
      relationship: many_to_one
      
    - join: adsets
      type: left_outer 
      sql_on: ${ad_actions_by_placement_and_device.adset_id} = ${adsets.id}
      relationship: many_to_one
      
    - join: campaigns
      type: left_outer 
      sql_on: ${ad_actions_by_placement_and_device.campaign_id} = ${campaigns.id}
      relationship: many_to_one

- explore: adsets
  joins:
    - join: campaigns
      type: left_outer 
      sql_on: ${adsets.campaign_id} = ${campaigns.id}
      relationship: many_to_one
    
- explore: campaigns