import json
import random

import MySQLdb
class voterdb:
    def CreateNewVoterId(*data):
        data=data[1]
        dob=str(data['dob'])[0:10]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        name=data['fname']+" "+data['lname']
        sql="INSERT INTO ECdb_table (`name`,`father_name`,`gender`,`dob`,`address`,`pin_code`,`Assembly_constituency`,`district`,`thaluk`,`state`,`phone`,`photo`,`post`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s,'%s','%s','%s','%s','%s')" %(name,data['fathername'],data['gender'],dob,data['address'],data['pincode'],data['acnumber'],data['district']+"'",data['thaluk'],data['state'],data['mobilenumber'],data['photo'],data['postward'])
        obj.execute(sql)
        f="name='"+name+"' AND father_name='"+data['fathername']+"' AND dob='"+dob+"' AND phone='"+str(data['mobilenumber'])+"'"
        sql="SELECT id From ECdb_table WHERE "+f
        obj.execute(sql)
        id=obj.fetchone()[0]
        voter_id="%04d" % id
        voter_id="ABC"+voter_id
        obj.execute("UPDATE ECdb_table SET voter_id='%s' WHERE id='%s';" %(voter_id,id))
        con.commit()
        con.close()
        return {"message":"success"}
    def validate(*data):
        data=data[1]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="SELECT * FROM votesdb_table WHERE people_id='"+data+"'"
        obj.execute(sql)
        exit1=obj.fetchone()
        if(exit1==None):
            sql="SELECT * FROM ECdb_table WHERE voter_id='"+data+"'"
            obj.execute(sql)
            user=obj.fetchone()
            if(user):
                obj.execute("SELECT * FROM candidate_list WHERE  post='%s' AND acnumber='%s' " %(user[9],user[10]))
                data=obj.fetchall()
                a=[]
                for i in data:
                    d={"Canid":i[0],"CanName":i[1],"CanPhoto":i[2],"CanGender":i[4],"SymbolName":i[5],"Symbollogo":i[6],"PartyName":i[7]}
                    a.append(d)
                con.commit()
                con.close()
                return a
            else:
                con.commit()
                con.close()
        else:
            return 2
        return 0
    def SelectVote(*data):
        data=data[1]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="SELECT * FROM votesdb_table WHERE people_id='"+data+"'"
        obj.execute(sql)
        data=obj.fetchone()
        d={}
        if(data):
            d={"voter_id":data[2],"party":data[4],"time":data[11]}
            con.commit()
            con.close()
            return d
        else:
            con.commit()
            con.close()
            pass
    def deletevote(*data):
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        data=data[1]
        obj.execute("DELETE FROM votesdb_table WHERE people_id='"+data+"'")
        con.commit()
        con.close()
        return 1
class adhardb:
    def CreateNewAdhar(*data):
        data=data[1]
        dob=str(data['dob'])[0:10]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="INSERT INTO aadhardb_table (`first_name`,`last_name`,`photo`,`father_name`,`dob`,`gender`,`address`,`district`,`thaluk`,`state`,`pin_code`,`phone`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s,'%s','%s','%s','%s')" %(data['fname'],data['lname'],data['photo'],data['fathername'],dob,data['gender'],data['address'],data['district']+"'",data['thaluk'],data['state'],str(data['pincode']),data['mobilenumber'])
        print sql
        obj.execute(sql)
        f="first_name='"+data['fname']+"' AND last_name='"+data['lname']+"' AND father_name='"+data['fathername']+"' AND dob='"+dob+"' AND phone='"+str(data['mobilenumber'])+"'"
        sql="SELECT id From aadhardb_table WHERE "+f
        obj.execute(sql)
        id=obj.fetchone()[0]
        aadhar_id="%04d" % id
        aadhar_id=str(random.randint(11111111,99999999))+aadhar_id
        obj.execute("UPDATE aadhardb_table SET unique_id='%s' WHERE id='%s';" %(aadhar_id,id))
        con.commit()
        con.close()
        return "ss"
    def getinfo(*data):
        data=data[1]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        obj.execute("SELECT * FROM aadhardb_table WHERE unique_id='"+data+"'")
        data=obj.fetchone()
        print data        
        if(data):
            # sql="SELECT * From aadhardb_table WHERE unique_id='"+data+"'"
            # obj.execute(sql)
            # data=obj.fetchone()
            print data[5]
            params= {
                "fname":data[1],
                "lname":data[2],
                "fathername":data[4],
                "gender":data[6],
                "mobilenumber":data[13],
                "dob":str(data[5]),
                "address":data[8],
                "pincode":data[12],
                "state":data[11],
                "district":data[9],
                "thaluk":data[10],
            }
            return params
        else:
            pass
class candidatedb:
    def CreateNewCandidate(*data):
        data=data[1]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="SELECT * From ECdb_table WHERE voter_id='"+data['voterid']+"'"
        obj.execute(sql)
        user=obj.fetchone()
        sql="INSERT INTO candidate_list (`name`,`photo`,`dob`,`gender`,`symbol_name`,`symbol_logo`,`party_name`,`address`,`district`,`thaluk`,`state`,`pin_no`,`phone`,`fathername`,`post`,`acnumber`,`voter_id`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s,'%s','%s','%s','%s','%s','%s','%s','%s','%s')" %(user[1],data['photo'],user[6],user[4],data['symbolname'],data['symbol'],data['party'],user[7]+"'",data['district'],data['thaluk'],data['state'],data['pincode'],data['mobilenumber'],user[3],data['postward'],data['acnumber'],data['voterid'])
        print sql
        obj.execute(sql)
        con.commit()
        con.close()
        return 0

class votesdb:
    def InsertVotes(*data):
        data=data[1]
        print data
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="SELECT * From candidate_list WHERE id='"+str(data['CanId'])+"'"
        # print sql
        obj.execute(sql)
        user=obj.fetchone()
        # print user
        sql="INSERT INTO votesdb_table (`candidate_id`,`people_id`,`acnumber`,`Symbol_name`,`party_name`,`district`,`thaluk`,`state`,`pin_code`,`post`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s,'%s','%s')" %(data['CanId'],data['voterid'],user[16],user[5],user[7],user[9],user[10],user[11]+"'",user[12],user[15])
        # print sql
        obj.execute(sql)
        con.commit()
        con.close()
        return 1

class analysis:
    def process(*data):
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        a=[['Party Name', 'Count']]
        sql="SELECT * From votesdb_table WHERE party_name='A.B.C';"
        obj.execute(sql)
        resultset=obj.fetchall()
        d=["A.B.C",len(resultset)]
        a.append(d)
        sql="SELECT * From votesdb_table WHERE party_name='X.Y.Z';"
        obj.execute(sql)
        resultset=obj.fetchall()
        d=["X.Y.Z",len(resultset)]
        a.append(d)
        sql="SELECT * From votesdb_table WHERE party_name='P.Q.R.S';"
        obj.execute(sql)
        resultset=obj.fetchall()
        d=["P.Q.R.S",len(resultset)]
        a.append(d)
        sql="SELECT * From votesdb_table WHERE party_name='Autonomy';"
        obj.execute(sql)
        resultset=obj.fetchall()
        d=["Autonomy",len(resultset)]
        a.append(d)
        con.commit()
        con.close()
        return a
    def inforetrive(*data):
        data=data[1]
        con=MySQLdb.connect("localhost","root","test","SmartProject")
        obj=con.cursor()
        sql="SELECT * From candidate_list WHERE district='"+data['district']+"' AND post='"+data['post']+"' AND acnumber='"+str(data['acnumber'])+"'"
        # print sql
        obj.execute(sql)
        data=obj.fetchall()
        if(data):
            a=[]
            for i in data:
                d={""}
        con.commit()
        con.close()
        return 1




if __name__=="__main__":
    voterdb=voterdb()
    adhardb=adhardb()
    candidatedb=candidatedb()
    votesdb=votesdb()
    analysis=analysis()
