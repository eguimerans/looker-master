view: lease {
  sql_table_name: @{pmc}.lease ;;
  drill_fields: [bluemoon_lease_id]

  dimension: bluemoon_lease_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."bluemoon_lease_id" ;;
  }

  dimension: _applicant {
    type: number
    sql: ${TABLE}."_applicant" ;;
  }

  dimension: _applicant_discriminator {
    type: string
    sql: ${TABLE}."_applicant_discriminator" ;;
  }

  dimension_group: activation {
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
    sql: ${TABLE}."activation_date" ;;
  }

  dimension_group: actual_move_in {
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
    sql: ${TABLE}."actual_move_in" ;;
  }

  dimension_group: actual_move_out {
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
    sql: ${TABLE}."actual_move_out" ;;
  }

  dimension_group: approval {
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
    sql: ${TABLE}."approval_date" ;;
  }

  dimension: billing_account {
    type: number
    sql: ${TABLE}."billing_account" ;;
  }

  dimension: completion {
    type: string
    sql: ${TABLE}."completion" ;;
  }

  dimension_group: completion_lease_to {
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
    sql: ${TABLE}."completion_lease_to" ;;
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

  dimension_group: creation {
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
    sql: ${TABLE}."creation_date" ;;
  }

  dimension: current_term {
    type: number
    sql: ${TABLE}."current_term" ;;
  }

  dimension_group: expected_move_in {
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
    sql: ${TABLE}."expected_move_in" ;;
  }

  dimension_group: expected_move_out {
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
    sql: ${TABLE}."expected_move_out" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: increase_term {
    type: number
    sql: ${TABLE}."increase_term" ;;
  }

  dimension: initial_status {
    type: string
    sql: ${TABLE}."initial_status" ;;
  }

  dimension: integration_system_id {
    type: number
    sql: ${TABLE}."integration_system_id" ;;
  }

  dimension_group: lease_from {
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
    sql: ${TABLE}."lease_from" ;;
  }

  dimension: lease_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."lease_id" ;;
  }

  dimension: lease_id_s {
    type: string
    sql: ${TABLE}."lease_id_s" ;;
  }

  dimension_group: lease_to {
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
    sql: ${TABLE}."lease_to" ;;
  }

  dimension: lease_type {
    type: string
    sql: ${TABLE}."lease_type" ;;
  }

  dimension_group: legal_termination {
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
    sql: ${TABLE}."legal_termination_date" ;;
  }

  dimension_group: move_out_submission {
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
    sql: ${TABLE}."move_out_submission_date" ;;
  }

  dimension: next_term {
    type: number
    sql: ${TABLE}."next_term" ;;
  }

  dimension: previous_term {
    type: number
    sql: ${TABLE}."previous_term" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."tags" ;;
  }

  dimension: unit {
    type: number
    sql: ${TABLE}."unit" ;;
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
    drill_fields: [bluemoon_lease_id, lease.bluemoon_lease_id, lease.count]
  }
}
