from cvzone.HandTrackingModule import HandDetector
import cv2

cap = cv2.VideoCapture(0)

detector = HandDetector(
    staticMode=False,
    maxHands=1,
    detectionCon=0.7,
    minTrackCon=0.5
)

while True:
    success, img = cap.read()

    if not success:
        break

    hands, img = detector.findHands(img)

    if hands:
        hand = hands[0]

        lmList = hand["lmList"]

        print("Landmarks:", len(lmList))

    cv2.imshow("Vaani-AI Hand Detection", img)

    key = cv2.waitKey(1)

    if key == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()