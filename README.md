# beetrack

- Version de ruby: 2.2.2
- Version de Rails: 4.2.0
- Base de datos: Postgres

Testing
  - Rspec
  - Gemas usadas: rspec-rails, shoulda-matchers
  - Codigo ubicado en /spec

Style
  - Boostrap
  - gemas usadas: bootstrap-sass, autoprefixer-rails

Mapa
  - Api: Google map
  - Codigo ubicado en app/assets/javascript/map.js


Instrucciones:
  - rake db:create
  - rake db:migrate
  - rake db:seed  (si se quiere crear el vehiculo con 3 coordenadas iniciales)
  - rails s
  - Se muestran solo las 10 coordenadas mas recientes para el vehiculo
  - github url para ver commits : https://github.com/gipsyMartinez/beetrack/
