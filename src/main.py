# Try to break some PEP8 rules: add whitespaces, unused variables, etc.

import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.use("TkAgg")


def main():
    np.random.seed(42)
    r = np.random.randn(1000)
    return np.cumsum(r)


if __name__ == "__main__":
    a = main()

    plt.figure("Test", figsize=(6, 4))
    plt.title("Random process")
    plt.plot(a)
    plt.xlabel("Time")
    plt.ylabel("Value")
    plt.grid(True)
    plt.tight_layout()
    plt.show()
