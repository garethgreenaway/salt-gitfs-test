barrier:
  test.nop 
  
{%- for x in [1,2,3] %}
blah-{{x}}:
  cmd.run:
    - name: sleep 10
    - require:
      - barrier
    - parallel: true
    - require_in:
      - barrier2
{% endfor %}

barrier2:
  test.nop
