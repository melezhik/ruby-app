user_id=$(config user_name)

echo create user id: $user_id

useradd -r -m -d /home/$user_id $user_id || exit 1

ls -d /home/$user_id || exit 1

id $user_id || exit 1

echo create-user-ok
