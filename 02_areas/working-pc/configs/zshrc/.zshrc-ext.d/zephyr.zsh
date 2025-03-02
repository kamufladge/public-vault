
create_compile_commands_link() {
  ln -s build/debug/compile_commands.json ./
}

activate_zephyr_env() {
  source $HOME/dev/venv/zephyrproject/bin/activate
}

zephyr_cmake_prepare_native_debug() {
  cmake -B build/debug -DCMAKE_BUILD_TYPE=Debug -DBOARD=native_sim -DCMAKE_EXPORT_COMPILE_COMMANDS=true -GNinja .
}

zephyr_cmake_build() {
  cmake --build build/debug
}
