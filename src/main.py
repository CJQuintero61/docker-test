# This program is a simple demonstration of how to use 
# and make a simple docker container.

# to run:
# 1. build the docker container: docker compose up --build -d
# 2. run this python file using: docker exec my-python-container python3 src/main.py
# 3. remove the container: docker compose down
import numpy as np

def main():
    print("Running program from main.py")

    # an example array to demonstrate numpy 
    # was installed correctly in the docker container
    my_array = np.array([1, 2, 3])

    print(f"The numpy array is: {my_array}")
    

    print("Exiting program...")

if __name__ == "__main__":
    main()