# coding: utf-8
import time
import jedi

source = """
import matplotlib
matplotlib."""
script = jedi.Script(source, 3, len("matplotlib."))

start = time.time()
script.completions()
end = time.time()
print(end - start)

start = time.time()
script.completions()
end = time.time()
print(end - start)
