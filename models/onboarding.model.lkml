connection: "elt_connector"

include: "*.view"
explore: days_to_activate {
  hidden: yes
}
explore: onboarding_8_day_survey_reponserate{
  hidden: yes
}
explore: onboarding_8_day_survey_score {
  hidden: yes
}
explore: onboarding_activations_less_3_days {
  hidden: yes
}
explore: onboarding_activations_per_onboarder_chat {
  hidden: yes
}
explore: onboarding_activations_per_onboarder_rs {
  hidden: yes
}
explore: onboarding_chat_conversations {
  hidden: yes
}
explore: onboarding_csat {
  hidden: yes
}
explore: onboarding_mbg_detail {
  hidden: yes
}
explore: onboarding_percent_closes_activated_in_month {
  hidden: yes
}
explore: onboarding_percent_closes_activated_in_month_chat {
  hidden: yes
}
explore: onboarding_zombierate {
  hidden: yes
}

datagroup: onboarding_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: onboarding_default_datagroup
