{% macro set_owner_slack_id(owner) %}
  {% set slack_ids = var('owner_slack_id', {}) %}
  {% set slack_id = slack_ids.get(owner, slack_ids.get('Default', '@default')) %}

  {% do config(
    meta={ "owner_slack_id": slack_id }
  ) %}
{% endmacro %}