if exists("loaded_bashar")
  finish
endif

let loaded_bashar = 1

runtime! bashar_parts/**/*.vim
