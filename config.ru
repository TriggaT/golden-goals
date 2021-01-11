require './config/environment'

use Rack::MethodOverride
use UsersController
use GoalsController
run ApplicationController
