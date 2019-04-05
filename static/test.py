
from datetime import datetime
import face_recognition
import cv2
import os
# from utils import create_csv
import glob
import numpy
face_cascade=cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

face_data = []
face_name_list = []
image = face_recognition.load_image_file("2.jpg")
data = face_recognition.face_encodings(image)[0]
face_data.append(data)
print face_data
face_name_list.append("ss")
face_locations = []
face_encodings = []
face_names = []
video_capture=cv2.VideoCapture(0)
def demo():
    i=1

    while True:
        ret, frame = video_capture.read()
        # cv2.imwrite("test.jpg", frame)
        # frame_number += 1
        face_locations = face_recognition.face_locations(frame)
        face_encodings = face_recognition.face_encodings(frame, face_locations)
        face_names = []
        for face_encoding in face_encodings:
            match = face_recognition.compare_faces(face_data, face_encoding, tolerance=0.50)
            name = None
            if True in match:
                first_match_index = match.index(True)
                name = face_name_list[first_match_index]
                print(name)
            else:
                name="unkunm"
            face_names.append(name)
            for (top, right, bottom, left), name in zip(face_locations, face_names):
                cv2.rectangle(frame, (left, top), (right, bottom),(0,165,255), 2)
                crop_img = frame[top:bottom, left:right]
                cv2.rectangle(frame, (left, bottom - 35), (right, bottom), (0,165,255), cv2.FILLED)
                font = cv2.FONT_HERSHEY_DUPLEX
                cv2.putText(frame, name, (left + 6, bottom - 6), font, 1.0, (255, 255, 255), 1)
                cv2.imshow("iVigil",frame)
                cv2.waitKey(10)
demo()