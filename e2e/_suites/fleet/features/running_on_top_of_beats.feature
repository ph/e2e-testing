@running_on_beats
Feature: Running on top of Beats
  Scenarios for the Elastic Agent verifying the elastic-agent process runs alongside an existing Beats process.

@enroll
Scenario Outline: Deploying the Elastic-Agent with enroll and then run on top of <beats-process>
  Given an agent is deployed to Fleet on top of "<beats-process>"
  When the "elastic-agent" process is in the "started" state on the host
  Then there are "2" instances of the "<beats-process>" process in the "started" state
    And the agent is listed in Fleet as "online"

@beats
Examples: Beats
| beats-process |
| filebeat      |
| metricbeat    |
| filebeat      |
| metricbeat    |
