from cvzone.HandTrackingModule import HandDetector
import cv2
import pandas as pd
import joblib
import pyttsx3
import threading
from collections import Counter

# =========================
# LOAD MODEL
# =========================
model = joblib.load("gesture_model.pkl")

# =========================
# GESTURE -> WORD MAPPING
# =========================
label_map = {
    "OPEN_PALM": "HELLO",
    "FIST": "NO",
    "THUMBS_UP": "YES",
    "PEACE": "THANK YOU",
    "OK": "HELP"
}

# =========================
# SPEECH FUNCTION
# =========================
last_spoken = ""

def speak(text):
    engine = pyttsx3.init()
    engine.setProperty("rate", 150)
    engine.say(text)
    engine.runAndWait()
    engine.stop()

# =========================
# CAMERA
# =========================
cap = cv2.VideoCapture(0)

detector = HandDetector(
    staticMode=False,
    maxHands=1,
    detectionCon=0.7,
    minTrackCon=0.5
)

# =========================
# PREDICTION SMOOTHING
# =========================
prediction_buffer = []
BUFFER_SIZE = 5

while True:

    success, img = cap.read()

    if not success:
        break

    hands, img = detector.findHands(img)

    if hands:

        hand = hands[0]
        lmList = hand["lmList"]

        row = []

        for point in lmList:
            row.extend([
                point[0],
                point[1],
                point[2]
            ])

        df = pd.DataFrame([row])

        # Raw Prediction
        prediction = model.predict(df)[0]

        # Store prediction
        prediction_buffer.append(prediction)

        if len(prediction_buffer) > BUFFER_SIZE:
            prediction_buffer.pop(0)

        # Majority Voting
        stable_prediction = Counter(
            prediction_buffer
        ).most_common(1)[0][0]

        display_text = label_map.get(
            stable_prediction,
            stable_prediction
        )

        # Display on screen
        cv2.putText(
            img,
            display_text,
            (20, 60),
            cv2.FONT_HERSHEY_SIMPLEX,
            1.2,
            (0, 255, 0),
            3
        )

        # Speak only when sign changes
        global_last = globals().get("last_spoken", "")

        if display_text != global_last:

            print(f"Detected: {display_text}")

            threading.Thread(
                target=speak,
                args=(display_text,),
                daemon=True
            ).start()

            globals()["last_spoken"] = display_text

    cv2.imshow(
        "Vaani-AI Sign to Speech",
        img
    )

    key = cv2.waitKey(1) & 0xFF

    if key == ord("q"):
        break

cap.release()
cv2.destroyAllWindows()