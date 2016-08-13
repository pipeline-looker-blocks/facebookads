- dashboard: overview
  title: Overview
  layout: grid
  rows:
    - elements: [total_impressions, total_actions, total_spend]
      height: 150
    - elements: [spend_actions_impressions]
      height: 400
    - elements: [campaign_performance]
      height: 400
    - elements: [campaign_value]
      height: 400
    - elements: [campaign_delivery]
      height: 400
    - elements: [actions_by_country]
      height: 400
    - elements: [campaign_performance_and_clicks]
      height: 400
    - elements: [actions_by_type, avg_frequency_by_objective]
      height: 400
    - elements: [campaign_engagement]
      height: 400

  filters:
    - name: campaign_name
      type: string_filter
    - name: date_start
      type: date_filter

  elements:
  
  - name: total_impressions
    title: Total impressions
    type: single_value
    model: facebook
    explore: ad_insights
    measures: [ad_insights.total_impressions]
    sorts: [ad_insights.total_impressions desc]
    limit: 5000
    show_single_value_title: true
    show_comparison: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
  
  - name: total_actions
    title: Total actions
    type: single_value
    model: facebook
    explore: ad_insights
    measures: [ad_insights.total_actions]
    sorts: [ad_insights.total_actions desc]
    limit: 5000
    show_single_value_title: true
    show_comparison: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: total_spend
    title: Total spend
    type: single_value
    model: facebook
    explore: ad_insights
    measures: [ad_insights.total_spend]
    sorts: [ad_insights.total_spend desc]
    limit: 5000
    show_single_value_title: true
    show_comparison: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: spend_actions_impressions
    title: Spend, actions, and impressions over time
    type: looker_line
    model: facebook
    explore: ad_insights
    dimensions: [ad_insights.date_start_month]
    measures: [ad_insights.total_spend, ad_insights.total_actions,
      ad_insights.total_impressions]
    sorts: [ad_insights.date_start_month desc]
    limit: 5000
    stacking: ''
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: campaign_performance
    title: Campaign performance
    type: table
    model: facebook
    explore: ad_insights
    dimensions: [campaigns.name, adsets.end_date, adsets.effective_status,
      campaigns.objective]
    measures: [ad_insights.total_actions, ad_insights.total_clicks,
      ad_insights.total_reach, ad_insights.total_spend]
    dynamic_fields:
    - table_calculation: cost_per_action
      label: cost_per_action
      expression: ${ad_insights.total_spend} / ${ad_insights.total_actions}
    sorts: [campaigns.name]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: campaign_value
    title: Cost per action v. total actions by campaign
    type: looker_scatter
    model: facebook
    explore: ad_insights
    dimensions: [campaigns.name]
    measures: [ad_insights.total_actions, ad_insights.total_spend]
    dynamic_fields:
    - table_calculation: cost_per_action
      label: Cost per action
      expression: ${ad_insights.total_spend} / ${ad_insights.total_actions}
    hidden_fields: [ad_insights.total_spend, campaigns.name]
    sorts: [cost_per_action desc]
    description: 'Evaluate campaign performance by comparing the actions generated to the total spent on the campaign.'
    limit: 5000
    column_limit: 50
    stacking: ''
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: campaign_delivery
    title: Campaign delivery
    type: table
    model: facebook
    explore: ad_insights
    dimensions: [campaigns.name, adsets.end_date, adsets.effective_status,
      campaigns.objective]
    measures: [ad_insights.total_reach, ad_insights.avg_frequency,
      ad_insights.avg_cpp, ad_insights.avg_cpm, ad_insights.total_impressions]
    sorts: [campaigns.name]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: actions_by_country
    title: Actions by country
    type: looker_geo_choropleth
    model: facebook
    explore: ad_insights_by_country
    dimensions: [ad_insights_by_country.country_iso]
    measures: [ad_insights_by_country.total_actions]
    sorts: [ad_insights_by_country.total_actions desc]
    limit: 5000
    map: auto
    colors: ['#FFCC00']
    show_view_names: true
    quantize_colors: false
    listen:
      campaign_name: ad_insights_by_country.campaign_name
      date_start: ad_insights_by_country.date_start_date
    
  - name: campaign_performance_and_clicks
    title: Campaign performance and clicks
    type: table
    model: facebook
    explore: ad_insights
    dimensions: [campaigns.name, adsets.effective_status, adsets.end_date,
      campaigns.objective]
    measures: [ad_insights.total_actions, ad_insights.total_reach,
      ad_insights.avg_frequency, ad_insights.total_clicks, ad_insights.avg_ctr,
      ad_insights.avg_cpc, ad_insights.total_impressions, ad_insights.avg_cpm,
      ad_insights.total_inline_link_clicks, ad_insights.avg_inline_link_click_ctr,
      ad_insights.avg_cost_per_inline_link_click, ad_insights.total_spend]
    sorts: [ad_insights.total_actions desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: actions_by_type
    title: Actions by type
    type: looker_pie
    model: facebook
    explore: ad_action_insights
    dimensions: [ad_action_insights.action_type]
    measures: [ad_action_insights.total_actions]
    sorts: [ad_action_insights.total_actions desc]
    limit: 5000
    colors: ['#FFCC00', '#1E2023', '#3399CC', '#CC3399', '#66CC66', '#999999', '#FF4E00', '#A2ECBA', '#9932CC', '#0000CD']
    value_labels: legend
    show_view_names: true
    listen:
      campaign_name: ad_action_insights.campaign_name
      date_start: ad_action_insights.date_start_date
    
  - name: avg_frequency_by_objective
    title: Average frequency by objective
    type: looker_column
    model: facebook
    explore: ad_insights
    dimensions: [campaigns.objective]
    measures: [ad_insights.avg_frequency]
    sorts: [ad_insights.avg_frequency desc]
    limit: 5000
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
    listen:
      campaign_name: ad_insights.campaign_name
      date_start: ad_insights.date_start_date
    
  - name: campaign_engagement
    title: Campaign engagement
    type: table
    model: facebook
    explore: ad_action_insights
    dimensions: [campaigns.name, adsets.effective_status, adsets.end_date,
      campaigns.objective]
    measures: [ad_action_insights.post_likes, ad_action_insights.post_comments,
      ad_action_insights.link_clicks, ad_action_insights.page_likes,
      ad_action_insights.post_shares]
    sorts: [campaigns.name]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      campaign_name: ad_action_insights.campaign_name
      date_start: ad_action_insights.date_start_date