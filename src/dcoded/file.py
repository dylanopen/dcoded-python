import os

def read(file):
	try:
		with open(file) as f:
			return f.read()
	except:
		return

def write(file, content):
	try:
		with open(file, "w") as f:
			return f.write(content)
	except:
		return

def create_folder(folder):
	try:
		os.mkdir(folder)
		return True
	except:
		return False

