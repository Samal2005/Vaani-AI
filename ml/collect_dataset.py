from cvzone.HandTrackingModule import HandDetector
import cv2
import csv
import os

cap = cv2.VideoCapture(0)

detector = HandDetector(
    staticMode=False,
    maxHands=1,
    detectionCon=0.7,
    minTrackCon=0.5
)

DATASET_FILE = "dataset.csv"

if not os.path.exists(DATASET_FILE):
    with open(DATASET_FILE, "w", newline="") as f:
        writer = csv.writer(f)

        header = []

        for i in range(21):
            header.extend([
                f"x{i}",
                f"y{i}",
                f"z{i}"
            ])

        header.append("label")

        writer.writerow(header)

labels = {
    "1": "OPEN_PALM",
    "2": "FIST",
    "3": "PEACE",
    "4": "THUMBS_UP",
    "5": "OK"
}

current_label = "OPEN_PALM"

print("\n========== VAANI-AI DATA COLLECTION ==========")
print("Press:")
print("1 -> OPEN_PALM")
print("2 -> FIST")
print("3 -> PEACE")
print("4 -> THUMBS_UP")
print("5 -> OK")
print("s -> Save Sample")
print("q -> Quit")
print("=============================================\n")

sample_count = 0

while True:

    success, img = cap.read()

    if not success:
        break

    hands, img = detector.findHands(img)

    cv2.putText(
        img,
        f"Label: {current_label}",
        (20, 50),
        cv2.FONT_HERSHEY_SIMPLEX,
        1,
        (0, 255, 0),
        2
    )

    cv2.putText(
        img,
        f"Samples: {sample_count}",
        (20, 90),
        cv2.FONT_HERSHEY_SIMPLEX,
        1,
        (255, 0, 0),
        2
    )

    key = cv2.waitKey(1) & 0xFF

    if chr(key) in labels:
        current_label = labels[chr(key)]
        print(f"\nSelected: {current_label}")

    if hands:

        hand = hands[0]
        lmList = hand["lmList"]

        if key == ord("s"):

            row = []

            for point in lmList:
                row.extend([
                    point[0],
                    point[1],
                    point[2]
                ])

            row.append(current_label)

            with open(DATASET_FILE, "a", newline="") as f:
                writer = csv.writer(f)
                writer.writerow(row)

            sample_count += 1

            print(
                f"Saved {sample_count} -> {current_label}"
            )

    cv2.imshow(
        "Vaani-AI Dataset Collection",
        img
    )

    if key == ord("q"):
        break

cap.release()
cv2.destroyAllWindows()