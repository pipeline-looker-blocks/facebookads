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

  filters:
  
    - name: age_group
      type: field_filter
      explore: ad_insights_by_age_and_gender
      field: ad_insights_by_age_and_gender.age
    - name: gender
      type: field_filter
      explore: ad_insights_by_age_and_gender
      field: ad_insights_by_age_and_gender.gender
      

  elements:

  - name: avg_cpc
    title: Average CPC
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.avg_cpc]
    sorts: [ad_insights_by_age_and_gender.avg_cpc desc]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    listen: 
      age_group: ad_insights_by_age_and_gender.age
      gender: ad_insights_by_age_and_gender.gender
  
  - name: avg_ctr
    title: Average CTR
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.avg_ctr]
    sorts: [ad_insights_by_age_and_gender.avg_ctr desc]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    listen: 
      age_group: ad_insights_by_age_and_gender.age
      gender: ad_insights_by_age_and_gender.gender
    
  - name: avg_cpm
    title: Average CPM
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.avg_cpm]
    sorts: [ad_insights_by_age_and_gender.avg_cpm desc]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    listen: 
      age_group: ad_insights_by_age_and_gender.age
      gender: ad_insights_by_age_and_gender.gender
    
  - name: avg_cpp
    title: Average CPP
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.avg_cpp]
    sorts: [ad_insights_by_age_and_gender.avg_cpp desc]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: performance_by_age
    title: Performance by age group
    type: looker_column
    model: facebook
    explore: ad_insights_by_age_and_gender
    dimensions: [ad_insights_by_age_and_gender.age]
    measures: [ad_insights_by_age_and_gender.avg_cpc, ad_insights_by_age_and_gender.avg_ctr,
      ad_insights_by_age_and_gender.avg_frequency, ad_insights_by_age_and_gender.avg_cpm,
      ad_insights_by_age_and_gender.avg_cpp]
    sorts: [ad_insights_by_age_and_gender.avg_cpc desc]
    limit: 5000
    column_limit: 50
    stacking: ''
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
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
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.total_reach]
    sorts: [ad_insights_by_age_and_gender.total_reach desc 0]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: impressions
    title: Impressions
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.total_impressions]
    sorts: [ad_insights_by_age_and_gender.total_impressions desc]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: reach_by_age
    title: Reach by age group
    type: looker_pie
    model: facebook
    explore: ad_insights_by_age_and_gender
    dimensions: [ad_insights_by_age_and_gender.age]
    measures: [ad_insights_by_age_and_gender.total_reach]
    sorts: [ad_insights_by_age_and_gender.total_reach desc 0]
    limit: 5000
    column_limit: 50
    value_labels: legend
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_view_names: true
    
  - name: impressions_by_age
    title: Impressions by age group
    type: looker_pie
    model: facebook
    explore: ad_insights_by_age_and_gender
    dimensions: [ad_insights_by_age_and_gender.age]
    measures: [ad_insights_by_age_and_gender.total_impressions]
    sorts: [ad_insights_by_age_and_gender.total_impressions desc]
    limit: 5000
    column_limit: 50
    value_labels: legend
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_view_names: true
    
  - name: clicks
    title: Clicks
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.total_clicks]
    sorts: [ad_insights_by_age_and_gender.total_clicks desc 0]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
  
  - name: spend
    title: Spend
    type: single_value
    model: facebook
    explore: ad_insights_by_age_and_gender
    measures: [ad_insights_by_age_and_gender.total_spend]
    sorts: [ad_insights_by_age_and_gender.total_spend desc 0]
    limit: 5000
    column_limit: 50
    show_single_value_title: true
    show_comparison: false
    
  - name: clicks_by_age
    title: Clicks by age group
    type: looker_pie
    model: facebook
    explore: ad_insights_by_age_and_gender
    dimensions: [ad_insights_by_age_and_gender.age]
    measures: [ad_insights_by_age_and_gender.total_clicks]
    sorts: [ad_insights_by_age_and_gender.total_clicks desc 0]
    limit: 5000
    column_limit: 50
    value_labels: legend
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_view_names: true
  
  - name: spend_by_age
    title: Spend by age group
    type: looker_pie
    model: facebook
    explore: ad_insights_by_age_and_gender
    dimensions: [ad_insights_by_age_and_gender.age]
    measures: [ad_insights_by_age_and_gender.total_spend]
    sorts: [ad_insights_by_age_and_gender.total_spend desc 0]
    limit: 5000
    column_limit: 50
    value_labels: legend
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_view_names: true