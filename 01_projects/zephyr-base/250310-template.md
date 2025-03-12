---
id: 250310-template
aliases:
  - firmware-template
tags:
  - zephyr
  - template
  - project
---

# Template

I want to create a template for future projects. It should integrated everything required to build applications maintainable OTA (over the air).

## Minimal setup

- [ ] Bootloader integration
- [ ] runable with native_sim if possible to update native_sim executable
- [ ] automatic build and tests on github
  - [ ] run tests on specific hardware (configure own runner on raspberry)
- [ ] signed firmware update (create private/public key)
- [ ] CoAP resource to push image
