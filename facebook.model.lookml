- connection: pipeline

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: facebook_adcreative

- explore: facebook_ads

- explore: facebook_ads__conversion_specs

- explore: facebook_ads__conversion_specs__action_type

- explore: facebook_ads__conversion_specs__page

- explore: facebook_ads__conversion_specs__post

- explore: facebook_ads__conversion_specs__post_wall

- explore: facebook_ads__targeting__connections

- explore: facebook_ads__targeting__custom_audiences

- explore: facebook_ads__targeting__education_statuses

- explore: facebook_ads__targeting__excluded_connections

- explore: facebook_ads__targeting__friends_of_connections

- explore: facebook_ads__targeting__geo_locations__cities

- explore: facebook_ads__targeting__geo_locations__countries

- explore: facebook_ads__targeting__geo_locations__location_types

- explore: facebook_ads__targeting__geo_locations__regions

- explore: facebook_ads__targeting__interests

- explore: facebook_ads__targeting__locales

- explore: facebook_ads__targeting__page_types

- explore: facebook_ads__targeting__work_positions

- explore: facebook_ads_insights

- explore: facebook_ads_insights__actions

- explore: facebook_ads_insights__cost_per_action_type

- explore: facebook_ads_insights__cost_per_unique_action_type

- explore: facebook_ads_insights__unique_actions

- explore: facebook_ads_insights__website_ctr

- explore: facebook_ads_insights_age_and_gender

- explore: facebook_ads_insights_age_and_gender__actions

- explore: facebook_ads_insights_age_and_gender__cost_per_action_ty

- explore: facebook_ads_insights_age_and_gender__cost_per_unique_ac

- explore: facebook_ads_insights_age_and_gender__unique_actions

- explore: facebook_ads_insights_age_and_gender__website_ctr

- explore: facebook_ads_insights_country

- explore: facebook_ads_insights_country__actions

- explore: facebook_ads_insights_country__cost_per_action_type

- explore: facebook_ads_insights_country__cost_per_unique_action_ty

- explore: facebook_ads_insights_country__unique_actions

- explore: facebook_ads_insights_country__website_ctr

- explore: facebook_ads_insights_placement_and_device

- explore: facebook_ads_insights_placement_and_device__actions

- explore: facebook_ads_insights_placement_and_device__cost_per_act

- explore: facebook_ads_insights_placement_and_device__cost_per_uni

- explore: facebook_ads_insights_placement_and_device__unique_actio

- explore: facebook_ads_insights_placement_and_device__website_ctr

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

