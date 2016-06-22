- connection: pipeline

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: facebook_adcreative

# - explore: facebook_adcreative_101441173373823__image_crops__100x100
# 
# - explore: facebook_adcreative_101441173373823__image_crops__100x100__value
# 
# - explore: facebook_adcreative_101441173373823__image_crops__191x100
# 
# - explore: facebook_adcreative_101441173373823__image_crops__191x100__value
# 
# - explore: facebook_adcreative_101441173373823__image_crops__400x150
# 
# - explore: facebook_adcreative_101441173373823__image_crops__400x150__value

# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__child
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__image
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__image2d82580c60d19fc6d427aab2509ee1ec
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__image48d1176021c37d07ef15eda3b557963c
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__imagee31af67c77b9c680bc0025e168877096
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__imagee96aea09846281a15dd171f92e49b939
# 
# - explore: facebook_adcreative_101441173373823__object_story_spec__link_data__imagefa1a53cd41a55cfdf5094aa00c586d33

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
#   joins:
#     - join: facebook_adsets_101441173373823
#       type: left_outer 
#       sql_on: ${audits.ticket_id} = ${tickets.id}
#       relationship: many_to_one

- explore: facebook_adsets__targeting__custom_audiences

- explore: facebook_adsets__targeting__excluded_connections

- explore: facebook_adsets__targeting__geo_locations__cities

- explore: facebook_adsets__targeting__geo_locations__countries

- explore: facebook_adsets__targeting__geo_locations__location_type

- explore: facebook_adsets__targeting__geo_locations__regions

- explore: facebook_adsets__targeting__interests

- explore: facebook_adsets__targeting__locales

- explore: facebook_adsets__targeting__page_types

- explore: facebook_adsets__targeting__work_positions

- explore: facebook_campaigns

- explore: facebook_campaigns__ads__data

