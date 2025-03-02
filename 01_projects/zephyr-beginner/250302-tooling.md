---
id: 250302-tooling
aliases:
  - tooling
tags: []
---

# Tooling

## debugging

Set following settings in your project to generate correct debug information

```config
CONFIG_DEBUG=y
CONFIG_DEBUG_OPTIMIZATIONS=y
CONFIG_DEBUG_THREAD_INFO=y
```

## cmake

Configure application in debug mode:

```bash
cmake -B build/debug -DCMAKE_BUILD_TYPE=Debug -DBOARD=native_sim -DCMAKE_EXPORT_COMPILE_COMMANDS=true -GNinja .
```

Build application with cmake

```bash
cmake --build build/debug
```

## clangd

Clangd does not find compile_commands.json. Add link to root directory.

```bash
ln -s build/debug/compile_commands.json ./compile_commands.json
```

clangd check one file

```bash
~/.local/share/nvim-zephyr/mason/bin/clangd --check=src/main.c
```

## KConfig

- search for config keys and get description [online](https://docs.zephyrproject.org/latest/kconfig.html)
