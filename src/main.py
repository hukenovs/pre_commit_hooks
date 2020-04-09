import numpy as np


def main():
    np.random.seed(42)
    r = np.random.randn(1000)
    a = 10
    t = []
    return np.cumsum(r)
