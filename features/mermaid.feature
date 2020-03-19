Feature: Mermaid


  Scenario: Default configuration
    Given I have a file 'mermaid.md' with content:
      """
      ---
      ---

      {% mermaid %}
      sequenceDiagram
          participant John
          participant Alice
          Alice->>John: Hello John, how are you?
          John-->>Alice: Great!
      {% endmermaid %}
      """
    When I run jekyll build
    Then the file '_site/mermaid.html' should exist
    And I should see 'diagrams mermaid' in '_site/mermaid.html'
    And I should see svg output in '_site/mermaid.html'
