- connection: pipeline

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: facebook_adcreative

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
      
    - join: facebook_adcreative
      type: left_outer 
      sql_on: ${facebook_ads.creative__id} = ${facebook_adcreative.id}
      relationship: many_to_one

- explore: facebook_ads__conversion_specs__action_type
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__conversion_specs__action_type._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__conversion_specs__page
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__conversion_specs__page._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__conversion_specs__post
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__conversion_specs__post._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__conversion_specs__post_wall
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__conversion_specs__post_wall._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__connections
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__connections._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__custom_audiences
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__custom_audiences._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__education_statuses
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__education_statuses._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__excluded_connections
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__excluded_connections._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__friends_of_connections
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__friends_of_connections._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__geo_locations__cities
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__geo_locations__cities._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__geo_locations__countries
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__geo_locations__countries._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__geo_locations__location_types
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__geo_locations__location_types._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__geo_locations__regions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__geo_locations__regions._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__interests
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__interests._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__locales
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__locales._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__page_types
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__page_types._rjm_source_key_id} = ${facebook_ads.id}
      relationship: many_to_one

- explore: facebook_ads__targeting__work_positions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads__targeting__work_positions._rjm_source_key_id} = ${facebook_ads.id}
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

- explore: facebook_ads_insights__cost_per_action_type
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_action_type._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_action_type._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_action_type._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights__cost_per_unique_action_type
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_unique_action_type._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_unique_action_type._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights__cost_per_unique_action_type._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights__unique_actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights__unique_actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights__unique_actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights__unique_actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights__website_ctr
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights__website_ctr._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights__website_ctr._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights__website_ctr._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
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

- explore: facebook_ads_insights_age_and_gender__cost_per_action_ty
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_action_ty._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_action_ty._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_action_ty._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_age_and_gender__cost_per_unique_ac
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_unique_ac._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_unique_ac._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__cost_per_unique_ac._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_age_and_gender__unique_actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__unique_actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__unique_actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__unique_actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_age_and_gender__website_ctr
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__website_ctr._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__website_ctr._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_age_and_gender__website_ctr._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
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

- explore: facebook_ads_insights_country__cost_per_action_type
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_action_type._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_action_type._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_action_type._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_country__cost_per_unique_action_ty
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_unique_action_ty._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_unique_action_ty._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__cost_per_unique_action_ty._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_country__unique_actions
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__unique_actions._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__unique_actions._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__unique_actions._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_country__website_ctr
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__website_ctr._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__website_ctr._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_country__website_ctr._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
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

- explore: facebook_ads_insights_placement_and_device__cost_per_act
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_act._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_act._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_act._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_placement_and_device__cost_per_uni
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_uni._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_uni._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__cost_per_uni._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_placement_and_device__unique_actio
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__unique_actio._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__unique_actio._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__unique_actio._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_ads_insights_placement_and_device__website_ctr
  joins:
    - join: facebook_ads
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__website_ctr._rjm_source_key_ad_id} = ${facebook_ads.id}
      relationship: many_to_one
      
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__website_ctr._rjm_source_key_adset_id} = ${facebook_adsets.id}
      relationship: many_to_one
      
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_ads_insights_placement_and_device__website_ctr._rjm_source_key_campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one

- explore: facebook_adsets
  joins:
    - join: facebook_campaigns
      type: left_outer 
      sql_on: ${facebook_adsets.campaign_id} = ${facebook_campaigns.id}
      relationship: many_to_one
    
- explore: facebook_adsets__targeting__custom_audiences
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__custom_audiences._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__excluded_connections
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__excluded_connections._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__geo_locations__cities
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__geo_locations__cities._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__geo_locations__countries
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__geo_locations__countries._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__geo_locations__location_type
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__geo_locations__location_type._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__geo_locations__regions
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__geo_locations__regions._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__interests
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__interests._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__locales
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__locales._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__page_types
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__page_types._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_adsets__targeting__work_positions
  joins:
    - join: facebook_adsets
      type: left_outer 
      sql_on: ${facebook_adsets__targeting__work_positions._rjm_source_key_id} = ${facebook_adsets.id}
      relationship: many_to_one

- explore: facebook_campaigns

- explore: facebook_campaigns__ads__data

