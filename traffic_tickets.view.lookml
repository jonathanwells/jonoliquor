- view: traffic_tickets
  derived_table:
    sql: |
      SELECT * FROM [personal-real-estate:nys.traffic_tickets]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: violation_charged_code
    type: string
    sql: ${TABLE}.violation_charged_code

  - dimension: violation_description
    type: string
    sql: ${TABLE}.violation_description

  - dimension: violation_year
    type: int
    sql: ${TABLE}.violation_year

  - dimension: violation_month
    type: int
    sql: ${TABLE}.violation_month

  - dimension: violation_time
    type: string
    sql: ${TABLE}.violation_time

  - dimension: age_at_violation
    type: string
    sql: ${TABLE}.age_at_violation

  - dimension: state_of_license
    type: string
    sql: ${TABLE}.state_of_license

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: police_agency
    type: string
    sql: ${TABLE}.police_agency

  - dimension: court
    type: string
    sql: ${TABLE}.court

  - dimension: source
    type: string
    sql: ${TABLE}.source

  sets:
    detail:
      - violation_charged_code
      - violation_description
      - violation_year
      - violation_month
      - violation_time
      - age_at_violation
      - state_of_license
      - gender
      - police_agency
      - court
      - source

