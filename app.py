
from flask import Flask
from flask_restful import Api
from flask_jwt_extended import JWTManager
app = Flask(__name__)
api = Api(app)
app.config['JWT_SECRET_KEY'] = 'jwt-secret-string'
jwt = JWTManager(app)

import views, models, resources

api.add_resource(resources.UserRegistration, '/registration')
