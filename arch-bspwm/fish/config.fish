if status is-interactive
	
	set -g fish_greeting ''

	fish_add_path ~/bin/

  # hydro config
  set -g hydro_color_pwd 89b4fa
	set -g hydro_color_git a6e3a1
	set -g hydro_color_error f38ba8
	set -g hydro_color_prompt a6e3a1
	set -g hydro_color_duration f9e2af

  set -g fish_prompt_pwd_dir_length 3
	set -g hydro_multiline true


end
