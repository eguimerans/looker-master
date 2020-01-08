view: building {
  sql_table_name: building ;;

  drill_fields: [bluemoon_building_id]

  dimension: bluemoon_building_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."bluemoon_building_id" ;;
  }

  dimension: complex {
    type: number
    sql: ${TABLE}."complex" ;;
  }

  dimension: complex_primary {
    type: yesno
    sql: ${TABLE}."complex_primary" ;;
  }

  dimension: contacts_support_phone {
    type: string
    sql: ${TABLE}."contacts_support_phone" ;;
  }

  dimension: contacts_website {
    type: string
    sql: ${TABLE}."contacts_website" ;;
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

  dimension: default_product_catalog {
    type: yesno
    sql: ${TABLE}."default_product_catalog" ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}."external_id" ;;
  }

  dimension: financial_currency_name {
    type: string
    sql: ${TABLE}."financial_currency_name" ;;
  }

  dimension_group: financial_date_acquired {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."financial_date_acquired" ;;
  }

  dimension_group: financial_last_appraisal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."financial_last_appraisal_date" ;;
  }

  dimension: financial_last_appraisal_value {
    type: number
    sql: ${TABLE}."financial_last_appraisal_value" ;;
  }

  dimension: financial_market_price {
    type: number
    sql: ${TABLE}."financial_market_price" ;;
  }

  dimension: financial_purchase_price {
    type: number
    sql: ${TABLE}."financial_purchase_price" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: info_address_city {
    type: string
    sql: ${TABLE}."info_address_city" ;;
  }

  dimension: info_address_country {
    type: string
    sql: ${TABLE}."info_address_country" ;;
  }

  dimension: info_address_postal_code {
    type: string
    sql: ${TABLE}."info_address_postal_code" ;;
  }

  dimension: info_address_province {
    type: string
    sql: ${TABLE}."info_address_province" ;;
  }

  dimension: info_address_street_name {
    type: string
    sql: ${TABLE}."info_address_street_name" ;;
  }

  dimension: info_address_street_number {
    type: string
    sql: ${TABLE}."info_address_street_number" ;;
  }

  dimension: info_address_suite_number {
    type: string
    sql: ${TABLE}."info_address_suite_number" ;;
  }

  dimension: info_building_type {
    type: string
    sql: ${TABLE}."info_building_type" ;;
  }

  dimension: info_construction_type {
    type: string
    sql: ${TABLE}."info_construction_type" ;;
  }

  dimension: info_floor_type {
    type: string
    sql: ${TABLE}."info_floor_type" ;;
  }

  dimension: info_foundation_type {
    type: string
    sql: ${TABLE}."info_foundation_type" ;;
  }

  dimension: info_has_earthquakes {
    type: yesno
    sql: ${TABLE}."info_has_earthquakes" ;;
  }

  dimension: info_has_fire_alarm {
    type: yesno
    sql: ${TABLE}."info_has_fire_alarm" ;;
  }

  dimension: info_has_sprinklers {
    type: yesno
    sql: ${TABLE}."info_has_sprinklers" ;;
  }

  dimension: info_land_area {
    type: string
    sql: ${TABLE}."info_land_area" ;;
  }

  dimension: info_location_lat {
    type: number
    sql: ${TABLE}."info_location_lat" ;;
  }

  dimension: info_location_lng {
    type: number
    sql: ${TABLE}."info_location_lng" ;;
  }

  dimension: info_name {
    type: string
    sql: ${TABLE}."info_name" ;;
  }

  dimension: info_rental_type {
    type: string
    sql: ${TABLE}."info_rental_type" ;;
  }

  dimension: info_residential_storeys {
    type: string
    sql: ${TABLE}."info_residential_storeys" ;;
  }

  dimension: info_shape {
    type: string
    sql: ${TABLE}."info_shape" ;;
  }

  dimension_group: info_structure_build_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."info_structure_build_year" ;;
  }

  dimension: info_structure_type {
    type: string
    sql: ${TABLE}."info_structure_type" ;;
  }

  dimension: info_total_storeys {
    type: string
    sql: ${TABLE}."info_total_storeys" ;;
  }

  dimension: info_water_supply {
    type: string
    sql: ${TABLE}."info_water_supply" ;;
  }

  dimension: integration_system_id {
    type: number
    sql: ${TABLE}."integration_system_id" ;;
  }

  dimension: landlord {
    type: number
    sql: ${TABLE}."landlord" ;;
  }

  dimension: marketing {
    type: number
    sql: ${TABLE}."marketing" ;;
  }

  dimension: order_in_complex {
    type: number
    sql: ${TABLE}."order_in_complex" ;;
  }

  dimension: property_code {
    type: string
    sql: ${TABLE}."property_code" ;;
  }

  dimension: property_code_s {
    type: string
    sql: ${TABLE}."property_code_s" ;;
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

  dimension: use_external_billing {
    type: yesno
    sql: ${TABLE}."use_external_billing" ;;
  }

  measure: count {
    type: count
    drill_fields: [bluemoon_building_id, financial_currency_name, info_name, info_address_street_name]
  }
}
