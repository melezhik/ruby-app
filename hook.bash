action=$(config action)

if test "${action}" = "install-all"; then

  run_story create-user
  run_story install-ruby
  run_story install-app

else

  for s in $action
  do
    run_story $s
  done

fi


set_stdout install-all-done

