from app import app
import json,os
from werkzeug import secure_filename
from models import *
voterdb=voterdb()
adhardb=adhardb()
candidatedb=candidatedb()
votesdb=votesdb()
analysis=analysis()

from flask import jsonify,render_template,request,session,redirect
app.secret_key = "suresh"
app.config['voter'] = "static/img/voterimg"
app.config['aadhar'] = "static/img/aadharimg"
app.config['candidate'] = "static/img/candidateimg"
app.config['symbol']="static/img/symbolimgs"
app.config['voting_img']="static/img/voting_img"
import datetime
now = datetime.datetime.now()
@app.route("/")
def login():
	return render_template("index.html")

@app.route("/dataview")
def view():
	return render_template("dataview.html")

@app.route("/api/v1/details",methods=['POST'])
def detailinfo():
    candidate,aadhar,voter=analysis.getinfo()
    return jsonify({"aadhar":aadhar,"voter":voter,"candidate":candidate})
@app.route("/VoterIdRegister")
def VoterIdRegister():
	return render_template("voter_reg.html",role="admin")

@app.route("/adminlogin")
def adminlogin():
	return render_template("adminlogin.html")

@app.route("/adminloginvalidate" , methods=['POST'])
def adminloginvalidate():
    name=request.form['name']
    password=request.form['password']
    if(name=="admin" and password=="admin"):
	    return render_template("adminpage.html",role="admin")
    else:
       return render_template("adminlogin.html")

@app.route("/CandiadteRegister")
def CandiadteRegister():
    return render_template("candidate_reg.html",role="admin") 

@app.route("/aadharregisterpage")
def aadharregisterpage():
    return render_template("aadhar_reg.html",role="admin") 
@app.route("/votingpanel")
def votingpanel():
    return render_template("votingpanel.html")

@app.route("/api/v1/voterlogin",methods=['POST'])
def voterlogin():
    json_data = request.json
    result=voterdb.validate(json_data['voterid'])
    if(result):
        return  jsonify(result)
    elif(result):
        return  jsonify(result)
    else:
        return  jsonify(result)

@app.route("/api/v1/Confirmvote", methods=['POST'])
def voteforcandidate():
    json_data = request.json
    result=votesdb.InsertVotes(json_data)
    return jsonify({"result":1})

@app.route('/api/v1/CreateNewVoterId', methods=['POST'])
def CreateNewVoterId():
    if(request.json):
        json_data = request.json
        result=voterdb.CreateNewVoterId(json_data)
    else:
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['voter'], filename))
    return jsonify({'result': 0})

@app.route('/api/v1/CreateNewAdhar',methods=['POST'])
def CreateNewAdhar():
    if(request.json):
        json_data = request.json
        print json_data
        result=adhardb.CreateNewAdhar(json_data)
    else:
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['aadhar'], filename))

    return "ss"

@app.route('/api/v1/CreateNewCandidate',methods=['POST'])
def CreateNewCandidate():
    if(request.json):
        json_data = request.json
        result=candidatedb.CreateNewCandidate(json_data)
    else:
        file = request.files['file']
        filename = secure_filename(file.filename)
        print file
        if("C_" in filename):
            file.save(os.path.join(app.config['candidate'], filename))
        else:
            file.save(os.path.join(app.config['symbol'], filename))
    return jsonify({'result': 0})

@app.route("/api/v1/ElectionProcess",methods=["POST"])
def ElectionProcess():
    result=analysis.process()
    return jsonify(result)

@app.route("/api/v1/retrivedata",methods=["POST"])
def info():
    json_data = request.json
    print json_data
    result=analysis.inforetrive(json_data)
    return jsonify("ss")

@app.route("/api/v1/getAnalysis",methods=["POST"])
def getinfo():
    json_data = request.json
    result=analysis.inforetrive(json_data)
    print result
    return jsonify(result)

@app.route("/api/v1/GetAadharinfo/<id>",methods=['GET'])
def aadharinfo(id):
    result=adhardb.getinfo(id)
    return jsonify(result)

@app.route("/QueriesForVoters")
def QueriesForVoters():

    return render_template("t.html")

@app.route('/api/v1/check',methods=['POST'])
def C():
    if(request.json):
        json_data = request.json
    else:
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['voting_img'],filename))
        print "successfull"
    return jsonify({'result': 1})

@app.route("/api/v1/verify",methods=['POST'])
def verify():
    json_data = request.json
    print json_data
    result=voterdb.SelectVote(json_data['voterid'])
    return jsonify(result)

@app.route("/api/v1/reVote/<voter_id>",methods=['GET','POST'])
def revote(voter_id):
    result=voterdb.deletevote(voter_id)
    return redirect("/")