
mkdir templates 
python3 scaffold.py scene title:textarea music_id:references pic:file chapter_id:references
python3 scaffold.py scene_has_character scene_id:references character_id:references
python3 scaffold.py character name pic:file biography:textarea country_id:references
python3 scaffold.py country name
python3 scaffold.py chapter title order content:textarea
python3 scaffold.py music title composer score:staff scene_id:references time_signature key_signature pic:file
