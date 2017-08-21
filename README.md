# Beetrack

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

Procesos Asincronos
  - Se usa la gema delayed_job_active_record, la cual permite guardar en una tabla (delayed_jobs) todos los procesos ejecutados en background, en este caso se usa cuando el api recibe cada waypoint.
  - Para que el proceso aincrono se ejecute debe colocarse el siguiente comando rake jobs:work

Adicional
  - El root_path muestra un listado de todos los vehiculos
  - La ruta /show_waypoints/:id muestra el listado historico de waypoints por cada vehiculo

Instrucciones:
  - rake db:create
  - rake db:migrate
  - rake db:seed  (si se quiere crear un vehiculo con coordenadas iniciales)
  - rails s
  - github url para ver commits : https://github.com/gipsyMartinez/beetrack/

