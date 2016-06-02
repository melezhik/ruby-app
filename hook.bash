action=$(config action)

for s in $action
do
  run_story $s
done

set_stdout install-all-done

