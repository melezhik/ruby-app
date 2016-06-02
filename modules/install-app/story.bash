user_id=$(config user_name)
source_url=$(config source_url)

yum -y -q install sudo

echo downloading $source_url  ...
sudo -u $user_id -E bash --login -c "curl -f -o ~/app.tar.gz $source_url -s" || exit 1

echo unpacking app ...
sudo -u $user_id -E bash --login -c "tar -xzf app.tar.gz" || exit 1

echo installing dependencies via bundler
sudo -u $user_id -E bash --login -c "cd ~/app && bundle install --quiet " || exit 1

echo install-app-ok

