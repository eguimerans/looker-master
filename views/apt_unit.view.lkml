view: apt_unit {
  #sql_table_name: @{pmc}.apt_unit ;;
  sql_table_name: redridge.apt_unit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: building {
    type: number
    sql: ${TABLE}."building" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created" ;;
  }

  dimension: financial__market_rent {
    type: number
    sql: ${TABLE}."financial__market_rent" ;;
  }

  dimension: financial__max_online_price {
    type: number
    sql: ${TABLE}."financial__max_online_price" ;;
  }

  dimension: financial__max_price {
    type: number
    sql: ${TABLE}."financial__max_price" ;;
  }

  dimension: financial__min_online_price {
    type: number
    sql: ${TABLE}."financial__min_online_price" ;;
  }

  dimension: financial__min_price {
    type: number
    sql: ${TABLE}."financial__min_price" ;;
  }

  dimension: financial__unit_rent {
    type: number
    sql: ${TABLE}."financial__unit_rent" ;;
  }

  dimension: floorplan {
    type: number
    sql: ${TABLE}."floorplan" ;;
  }

  dimension: info__bathrooms {
    type: number
    sql: ${TABLE}."info__bathrooms" ;;
  }

  dimension: info__bedrooms {
    type: number
    sql: ${TABLE}."info__bedrooms" ;;
  }

  dimension: info_area {
    type: number
    sql: ${TABLE}."info_area" ;;
  }

  dimension: info_area_units {
    type: string
    sql: ${TABLE}."info_area_units" ;;
  }

  dimension: info_economic_status {
    type: string
    sql: ${TABLE}."info_economic_status" ;;
  }

  dimension: info_economic_status_description {
    type: string
    sql: ${TABLE}."info_economic_status_description" ;;
  }

  dimension: info_floor {
    type: number
    sql: ${TABLE}."info_floor" ;;
  }

  dimension: info_legal_address_city {
    type: string
    sql: ${TABLE}."info_legal_address_city" ;;
  }

  dimension: info_legal_address_country {
    type: string
    sql: ${TABLE}."info_legal_address_country" ;;
  }

  dimension: info_legal_address_override {
    type: yesno
    sql: ${TABLE}."info_legal_address_override" ;;
  }

  dimension: info_legal_address_postal_code {
    type: string
    sql: ${TABLE}."info_legal_address_postal_code" ;;
  }

  dimension: info_legal_address_province {
    type: string
    sql: ${TABLE}."info_legal_address_province" ;;
  }

  dimension: info_legal_address_street_direction {
    type: string
    sql: ${TABLE}."info_legal_address_street_direction" ;;
  }

  dimension: info_legal_address_street_name {
    type: string
    sql: ${TABLE}."info_legal_address_street_name" ;;
  }

  dimension: info_legal_address_street_number {
    type: string
    sql: ${TABLE}."info_legal_address_street_number" ;;
  }

  dimension: info_legal_address_street_type {
    type: string
    sql: ${TABLE}."info_legal_address_street_type" ;;
  }

  dimension: info_legal_address_suite_number {
    type: string
    sql: ${TABLE}."info_legal_address_suite_number" ;;
  }

  dimension: info_number_s {
    type: string
    sql: ${TABLE}."info_number_s" ;;
  }

  dimension: info_unit_number {
    type: string
    sql: ${TABLE}."info_unit_number" ;;
  }

  dimension_group: suspend {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."suspend_date" ;;
  }

  dimension: suspended {
    type: yesno
    sql: ${TABLE}."suspended" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, info_legal_address_street_name]
  }
}
