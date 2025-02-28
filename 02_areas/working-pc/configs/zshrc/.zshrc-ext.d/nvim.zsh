

alias nv="nvim"

FOLDER="$HOME/.config"

get_nvim_config_names() {
  items=("default")
  subfolders=($FOLDER/nvim-*/(N))

  if [ ${#subfolders[@]} -gt 0 ]; then
    subfolder_names=($(basename -a $FOLDER/nvim-*/ 2>/dev/null))
    for folder in $subfolder_names; do
   config=${folder#nvim-}
   items+=($config)
    done
  fi

  print -l "${items[@]}"
}

# generates shortcuts to call different nvim configurations
generate_shortcuts() {
  items=($(get_nvim_config_names))
  items=(${items[@]:#default})
 
  for item in $items; do
    function_name="nvim-$item"
   eval "
    ${function_name}() {
        NVIM_APPNAME=nvim-$item nvim $@
    }
    "
  done
}

nvims() {
  items=($(get_nvim_config_names))
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Config: " --height=~50% --layout=reverse --border --exit-0)

  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  else
    config="nvim-$config"
  fi

  NVIM_APPNAME=$config nvim $@
}

generate_shortcuts
unset -f generate_shortcuts

export EDITOR=nvim