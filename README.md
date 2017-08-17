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
  - rake db:seed  (Para crear un vehiculo con 3 coordenadas iniciales)
  - rails s
  - El root_path dirige a una lista de vehiculos
  - Se muestran solo las 10 coordenadas mas recientes por vehiculo
  - github url para ver commits : https://github.com/gipsyMartinez/beetrack/
