import requests

def post(url, data):
	return requests.post(url, data=data)

def get(url, params=[]):
	if params == []:
		return requests.get(url)
	return requests.get(url, params=params)

