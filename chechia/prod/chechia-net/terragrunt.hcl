terraform {
  source = "."
}

include {
  path = find_in_parent_folders()  
}

inputs = {
  account_id = get_env("NEW_RELIC_ACCOUNT_ID")
  api_key = get_env("NEW_RELIC_API_KEY")
}
