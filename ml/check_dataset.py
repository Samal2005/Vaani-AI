import os

DATASET_PATH = "selected_dataset"

for label in os.listdir(DATASET_PATH):
    folder = os.path.join(DATASET_PATH, label)

    if os.path.isdir(folder):
        videos = [
            f for f in os.listdir(folder)
            if f.endswith(".mp4")
        ]

        print(f"{label} : {len(videos)} videos")