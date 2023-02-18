def read(file):
	try:
		with open(file) as f:
			return f.read()
	except:
		return