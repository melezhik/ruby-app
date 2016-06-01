yum -y install which

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import - || exit 1

\curl -sSL https://get.rvm.io | bash -s stable --ruby || exit 1

source /usr/local/rvm/scripts/rvm

gem install bundler --no-ri --no-rdoc

echo ruby version: $(ruby --version)

bundler --version

echo install-ruby-ok

