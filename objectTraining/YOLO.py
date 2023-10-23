from ultralytics import YOLO
import win32com.client as comclt
import numpy as np
import cv2
import uuid
import os
import time

train = False
takePics = False
test = not False

if takePics:
    labels = ["up", "right", "down", "left", "fist"]
    number_imgs = 15
    IMAGES_PATH = os.path.join("collectedimages")
    for label in labels:
        path = os.path.join(IMAGES_PATH, label)
    for label in labels:
        cap = cv2.VideoCapture(0)
        print("Collecting images for {}".format(label))
        time.sleep(5)
        for imgnum in range(number_imgs):
            print("Collecting image {}".format(imgnum))
            ret, frame = cap.read()
            imgname = os.path.join(
                IMAGES_PATH, label, label + "." + "{}.jpg".format(str(uuid.uuid1()))
            )
            cv2.imwrite(imgname, frame)
            cv2.imshow("frame", frame)
            time.sleep(2)

            if cv2.waitKey(1) & 0xFF == ord("q"):
                break
    cap.release()
    cv2.destroyAllWindows()
elif train:
    # Load a model for training
    model = YOLO("yolov8n.yaml")  # build a new model from scratch
    # train the model
    if __name__ == "__main__":
        results = model.train(
            data="config.yaml", epochs=100, imgsz=640, workers=1, device=0, batch=-1
        )
elif test:
    model_path = "/Users/TechG/Desktop/folder/Coding/ObjectRecognitionSurvivalGame/objectTraining/best.pt"  # set the path to the training model
    model = YOLO(model_path)  # load the model
    wsh = comclt.Dispatch("WScript.Shell")  # start up windowsControl
    results = model(
        source=0, show=True, conf=0.3, max_det=1, save=False, stream=True
    )  # load webcam and start detecting
    if results or len(results) != 0:  # check if there was a model present
        for r in results:  # loop through each detected item
            detection_count = r.boxes.shape[0]  # count the number of occurances
            for i in range(detection_count):  # loop through the occurances
                cls = int(
                    r.boxes.cls[0].item()
                )  # set cls to the id of the detected item
                match cls:
                    case 0:
                        wsh.SendKeys("w")  # if up then press w
                    case 1:
                        wsh.SendKeys("s")  # if down then press s
                    case 2:
                        wsh.SendKeys("a")  # if left then press a
                    case 3:
                        wsh.SendKeys("d")  # if right then press d
