connection: "elt_connector"

include: "*.view"
explore: days_to_activate {}
explore: onboarding_8_day_survey_reponserate{}
explore: onboarding_8_day_survey_score {}
explore: onboarding_activations_less_3_days {}
explore: onboarding_activations_per_onboarder_chat {}
explore: onboarding_activations_per_onboarder_rs {}
explore: onboarding_chat_conversations {}
explore: onboarding_csat {}
explore: onboarding_mbg_detail {}
explore: onboarding_percent_closes_activated_in_month {}
explore: onboarding_percent_closes_activated_in_month_chat {}
explore: onboarding_zombierate {}

datagroup: onboarding_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: onboarding_default_datagroup
