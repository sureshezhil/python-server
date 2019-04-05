from flask_restful import Resource, reqparse
from flask import jsonify
from models import *
from flask_jwt_extended import (create_access_token, create_refresh_token, jwt_required, jwt_refresh_token_required, get_jwt_identity, get_raw_jwt)
class UserRegistration(Resource):
    def post(self):
        # parser = reqparse.RequestParser()
        # parser.add_argument('username', help = 'This field cannot be blank', required = True)
        # parser.add_argument('password', help = 'This field cannot be blank', required = True)
        # data = parser.parse_args()
        access_token = create_access_token(46)
        refresh_token = create_refresh_token(46)
        return {
                'message': 'User {} was created'.format(46),
                'access_token': access_token,
                'refresh_token': refresh_token
                }