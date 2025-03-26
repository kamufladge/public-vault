---
id: 250302-tooling
aliases:
  - zephyr-tooling
tags:
  - zephyr
  - tooling
---

# Tooling

## application development sample

A good sample how to structure a application with zephyr can be found [here](https://github.com/zephyrproject-rtos/example-application)

## debugging

Set following settings in your project to generate correct debug information

```config
CONFIG_DEBUG=y
CONFIG_NO_OPTIMIZATIONS=y
CONFIG_DEBUG_THREAD_INFO=y
```

## cmake

Configure application in debug mode:

```bash
cmake -B build/debug -DCMAKE_BUILD_TYPE=Debug -DBOARD=native_sim -DCMAKE_EXPORT_COMPILE_COMMANDS=true -GNinja -DEXTRA_CONF_FILE=debug.conf .
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
- to see or temporarily change KConfig see build folder ``zephyr/.config`` file
