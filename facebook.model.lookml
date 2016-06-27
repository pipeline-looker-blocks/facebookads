- connection: pipeline

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: country_coordinates

- explore: facebook_ads
  joins:
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads.adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_ads_insights
      type: left_outer 
      sql_on: ${facebook_ads.id} = ${facebook_ads_insights.ad_id}
      relationship: many_to_one

- explore: facebook_ads_insights
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights.ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights.adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights__actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights__actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights__actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights__actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_age_and_gender
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender.ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender.adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one


- explore: facebook_ads_insights_age_and_gender__actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_country
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country.ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country.adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one
      
    - join: country_coordinates
      type: left_outer
      sql_on: ${facebook_ads_insights_country.country} = ${country_coordinates.country}
      relationship: many_to_one

- explore: facebook_ads_insights_country__actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_placement_and_device
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device.ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device.adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_placement_and_device__actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_adsets
  joins:
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_adsets.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one
    
- explore: facebook_campaigns

- explore: facebook_campaigns__ads__data

