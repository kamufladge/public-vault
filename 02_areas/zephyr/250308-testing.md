---
id: 250308-testing
aliases:
  - zephyr-testing
tags:
  - zephyr
  - testing
---

# testing

Identification of tests happens with *.yaml files.

## Unit Tests

### Minimal yaml file

Minimal sample for a ``testcase.yaml`` file:

```yaml
tests:
  kamufladge.first.test:
    type: unit
```

### execution

Invoke tests of a folder with ``../zephyr/scripts/twister -T tests``
To run only tests of a specific platform use ``--platform BOARD``
