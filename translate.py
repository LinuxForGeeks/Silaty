# Silaty
# Copyright (c) 2018 - 2021 AXeL
# Copyright (c) 2014 - 2015 Jessewb786

import os
import json

languages = {
	'English': 'en.json',
	'Arabic': 'ar.json',
	'French': 'fr.json',
	'Spanish': 'es.json',
}
language = 'English'
translations = {}

def set_language(lang):
	global language
	language = lang
	load_translations()

def load_language_file(lang):
	try:
		return open(os.path.dirname(os.path.realpath(__file__)) + '/lang/' + languages[lang])
	except FileNotFoundError:
		return open(os.path.dirname(os.path.realpath(__file__)) + '/lang/' + languages['English'])

def load_translations():
	global translations
	file = load_language_file(language)
	try:
		translations = json.load(file)
	except json.decoder.JSONDecodeError:
		translations = {}

def translate_text(text):
	#print ("DEBUG: translate text '%s' in '%s'" % (text, language))
	if text in translations:
		return translations[text]
	else:
		return text
