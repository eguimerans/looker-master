view: customer {
  sql_table_name: @{pmc}.customer ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."customer_id" ;;
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

  dimension: customer_id_s {
    type: string
    sql: ${TABLE}."customer_id_s" ;;
  }

  dimension: disable_external_communication {
    type: yesno
    sql: ${TABLE}."disable_external_communication" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: person_birth {
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
    sql: ${TABLE}."person_birth_date" ;;
  }

  dimension: person_email {
    type: string
    sql: ${TABLE}."person_email" ;;
  }

  dimension: person_home_phone {
    type: string
    sql: ${TABLE}."person_home_phone" ;;
  }

  dimension: person_mobile_phone {
    type: string
    sql: ${TABLE}."person_mobile_phone" ;;
  }

  dimension: person_name_first_name {
    type: string
    sql: ${TABLE}."person_name_first_name" ;;
  }

  dimension: person_name_last_name {
    type: string
    sql: ${TABLE}."person_name_last_name" ;;
  }

  dimension: person_name_maiden_name {
    type: string
    sql: ${TABLE}."person_name_maiden_name" ;;
  }

  dimension: person_name_middle_name {
    type: string
    sql: ${TABLE}."person_name_middle_name" ;;
  }

  dimension: person_name_name_prefix {
    type: string
    sql: ${TABLE}."person_name_name_prefix" ;;
  }

  dimension: person_name_name_suffix {
    type: string
    sql: ${TABLE}."person_name_name_suffix" ;;
  }

  dimension: person_sex {
    type: string
    sql: ${TABLE}."person_sex" ;;
  }

  dimension: person_work_phone {
    type: string
    sql: ${TABLE}."person_work_phone" ;;
  }

  dimension: portal_registration_token {
    type: string
    sql: ${TABLE}."portal_registration_token" ;;
  }

  dimension: registered_in_portal {
    type: yesno
    sql: ${TABLE}."registered_in_portal" ;;
  }

  dimension_group: registered_in_portal_since {
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
    sql: ${TABLE}."registered_in_portal_since" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."tags" ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, person_name_first_name, person_name_middle_name, person_name_last_name, person_name_maiden_name]
  }
}
