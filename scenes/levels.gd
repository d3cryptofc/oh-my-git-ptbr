extends Node

var chapters

func _ready():
	reload()
	
func reload():
	chapters = []
	
	var dir = Directory.new()
	dir.open("res://levels")
	dir.list_dir_begin()

	var chapter_names = []
	
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with(".") and file != "sequence":
			chapter_names.append(file)

	dir.list_dir_end()
	chapter_names.sort()
	
	var config = ConfigFile.new()
	config.load('res://levels/sequence')
	for chapter_dirname in config.get_section_keys('sequence'):
		if not chapter_names.has(chapter_dirname):
			continue
		var chapter_name = config.get_value('sequence', chapter_dirname)
		var chapter = Chapter.new()
		chapter.load("res://levels/%s" % chapter_dirname, chapter_name)
		chapters.push_back(chapter)
