view: lease_participant {
  #sql_table_name: @{pmc}.lease_participant ;;
  sql_table_name: redridge.lease_participant ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: customer {
    type: number
    sql: ${TABLE}."customer" ;;
  }

  dimension: id_discriminator {
    type: string
    sql: ${TABLE}."id_discriminator" ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}."last_update" ;;
  }

  dimension: lease {
    type: number
    sql: ${TABLE}."lease" ;;
  }

  dimension: participant_id {
    type: string
    sql: ${TABLE}."participant_id" ;;
  }

  dimension: participant_id_s {
    type: string
    sql: ${TABLE}."participant_id_s" ;;
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

  dimension: yardi_applicant_id {
    type: string
    sql: ${TABLE}."yardi_applicant_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
