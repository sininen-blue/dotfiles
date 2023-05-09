function fish_greeting
  echo
  echo " TODO"

  for iteration in $(cat ~/todo/general.txt);
    echo " [] $iteration";
  end

end
