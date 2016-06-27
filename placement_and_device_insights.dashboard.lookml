- dashboard: placement_and_device_insights
  title: Placement and Device Insights
  layout: grid
  rows:
    - elements: [cpc_ctr_frequency, cpp_cpm]
      height: 500
    - elements: [top_level_avgs, top_level_totals]
      height: 200
    - elements: [reach_v_clicks, cpa_v_actions]
      height: 500

#  filters:

  elements:

  - name: cpc_ctr_frequency
    title: Untitled Visualization
    type: looker_column
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    dimensions: [facebook_ads_insights_placement_and_device.impression_device]
    measures: [facebook_ads_insights_placement_and_device.avg_cpc, facebook_ads_insights_placement_and_device.avg_ctr,
      facebook_ads_insights_placement_and_device.avg_frequency]
    sorts: [facebook_ads_insights_placement_and_device.avg_cpc desc]
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
    
  - name: cpp_cpm
    title: Untitled Visualization
    type: looker_bar
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    dimensions: [facebook_ads_insights_placement_and_device.impression_device]
    measures: [facebook_ads_insights_placement_and_device.avg_cpp, facebook_ads_insights_placement_and_device.avg_cpm]
    sorts: [facebook_ads_insights_placement_and_device.avg_cpp desc]
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
  
  - name: top_level_avgs
    title: Untitled Visualization
    type: looker_single_record
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    measures: [facebook_ads_insights_placement_and_device.avg_cpc, facebook_ads_insights_placement_and_device.avg_cpm,
      facebook_ads_insights_placement_and_device.avg_cpp, facebook_ads_insights_placement_and_device.avg_ctr,
      facebook_ads_insights_placement_and_device.avg_frequency]
    sorts: [facebook_ads_insights_placement_and_device.avg_cpc desc]
    limit: 500
    column_limit: 50
    show_view_names: true
  
  - name: top_level_totals
    title: Untitled Visualization
    type: looker_single_record
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    measures: [facebook_ads_insights_placement_and_device.total_reach, facebook_ads_insights_placement_and_device.total_actions,
      facebook_ads_insights_placement_and_device.total_clicks, facebook_ads_insights_placement_and_device.total_impressions,
      facebook_ads_insights_placement_and_device.total_spend]
    sorts: [facebook_ads_insights_placement_and_device.total_reach desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    
  - name: reach_v_clicks
    title: Untitled Visualization
    type: looker_scatter
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    dimensions: [facebook_ads_insights_placement_and_device.impression_device, facebook_ads_insights_placement_and_device.placement]
    measures: [facebook_ads_insights_placement_and_device.total_reach, facebook_ads_insights_placement_and_device.total_clicks]
    hidden_fields: [facebook_ads_insights_placement_and_device.impression_device, facebook_ads_insights_placement_and_device.placement]
    sorts: [facebook_ads_insights_placement_and_device.total_reach desc]
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
    show_null_points: true
    point_style: circle
  
  - name: cpa_v_actions
    title: Untitled Visualization
    type: looker_scatter
    model: facebook
    explore: facebook_ads_insights_placement_and_device
    dimensions: [facebook_ads_insights_placement_and_device.impression_device, facebook_ads_insights_placement_and_device.placement]
    measures: [facebook_ads_insights_placement_and_device.total_spend, facebook_ads_insights_placement_and_device.total_actions]
    dynamic_fields:
    - table_calculation: cost_per_action
      label: Cost per action
      expression: ${facebook_ads_insights_placement_and_device.total_spend} / ${facebook_ads_insights_placement_and_device.total_actions}
    hidden_fields: [facebook_ads_insights_placement_and_device.impression_device, facebook_ads_insights_placement_and_device.total_spend,
      facebook_ads_insights_placement_and_device.placement]
    sorts: [facebook_ads_insights_placement_and_device.total_spend desc]
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
    show_null_points: true
    point_style: circle