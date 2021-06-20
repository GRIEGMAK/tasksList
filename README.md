<!-- Устанавливаем необходимое -->
<!-- список необходимого: -->
rvm
ruby
bundler
rails
nvm
node 
yarn

sudo apt-get install postgresql 
<!-- Устанавливаем gems -->
bundle install
<!-- запуск -->
rails s
<!-- Чтобы открыть консоль -->
rails c
<!-- Запускаем postgres сервер -->
sudo service postgresql start
<!-- Создаем юзера -->
sudo -u postgres createuser user
<!-- Создаем базу данных -->
sudo -u postgres createdb tasklist_development
<!-- Зайти в базу данных psql -->
sudo -u postgres psql

psql tasklist_development