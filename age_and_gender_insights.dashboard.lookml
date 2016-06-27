- dashboard: age_and_gender_insights
  title: Age and Gender Insights
  layout: grid
  rows:
    - elements: [avg_cpc, avg_ctr]
      height: 150
    - elements: [avg_cpm, avg_cpp]
      height: 150
    - elements: [performance_by_age]
      height: 400
    - elements: [reach, impressions]
      height: 150
    - elements: [reach_by_age, impressions_by_age]
      height: 400
    - elements: [clicks, spend]
      height: 150
    - elements: [clicks_by_age, spend_by_age]
      height: 400

#  filters:

  elements:

  - name: avg_cpc
    title: Average CPC
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.avg_cpc]
    sorts: [facebook_ads_insights_age_and_gender.avg_cpc desc]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
  
  - name: avg_ctr
    title: Average CTR
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.avg_ctr]
    sorts: [facebook_ads_insights_age_and_gender.avg_ctr desc]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: avg_cpm
    title: Average CPM
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.avg_cpm]
    sorts: [facebook_ads_insights_age_and_gender.avg_cpm desc]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: avg_cpp
    title: Average CPP
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.avg_cpp]
    sorts: [facebook_ads_insights_age_and_gender.avg_cpp desc]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: performance_by_age
    title: Performance by age group
    type: looker_column
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    dimensions: [facebook_ads_insights_age_and_gender.age]
    measures: [facebook_ads_insights_age_and_gender.avg_cpc, facebook_ads_insights_age_and_gender.avg_ctr,
      facebook_ads_insights_age_and_gender.avg_frequency, facebook_ads_insights_age_and_gender.avg_cpm,
      facebook_ads_insights_age_and_gender.avg_cpp]
    sorts: [facebook_ads_insights_age_and_gender.avg_cpc desc]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
  
  - name: reach
    title: Reach
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.total_reach]
    sorts: [facebook_ads_insights_age_and_gender.total_reach desc 0]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: impressions
    title: Impressions
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.total_impressions]
    sorts: [facebook_ads_insights_age_and_gender.total_impressions desc]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: reach_by_age
    title: Reach by age group
    type: looker_pie
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    dimensions: [facebook_ads_insights_age_and_gender.age]
    measures: [facebook_ads_insights_age_and_gender.total_reach]
    sorts: [facebook_ads_insights_age_and_gender.total_reach desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_view_names: true
    
  - name: impressions_by_age
    title: Impressions by age group
    type: looker_pie
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    dimensions: [facebook_ads_insights_age_and_gender.age]
    measures: [facebook_ads_insights_age_and_gender.total_impressions]
    sorts: [facebook_ads_insights_age_and_gender.total_impressions desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_view_names: true
    
  - name: clicks
    title: Clicks
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.total_clicks]
    sorts: [facebook_ads_insights_age_and_gender.total_clicks desc 0]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
  
  - name: spend
    title: Spend
    type: single_value
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    measures: [facebook_ads_insights_age_and_gender.total_spend]
    sorts: [facebook_ads_insights_age_and_gender.total_spend desc 0]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: clicks_by_age
    title: Clicks by age group
    type: looker_pie
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    dimensions: [facebook_ads_insights_age_and_gender.age]
    measures: [facebook_ads_insights_age_and_gender.total_clicks]
    sorts: [facebook_ads_insights_age_and_gender.total_clicks desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_view_names: true
  
  - name: spend_by_age
    title: Spend by age group
    type: looker_pie
    model: facebook
    explore: facebook_ads_insights_age_and_gender
    dimensions: [facebook_ads_insights_age_and_gender.age]
    measures: [facebook_ads_insights_age_and_gender.total_spend]
    sorts: [facebook_ads_insights_age_and_gender.total_spend desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_view_names: true
