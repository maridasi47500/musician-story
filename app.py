from flask import Flask, render_template, request, session, redirect
import string
import random
#from digital_makeup import Maquille

import re
#import python_weather
#
#import asyncio


#from newspaper import Article
#import newspaper
#print(newspaper.languages())
#from codelang_detect import detect as detectprogramminglanguage
#from langdetect import detect as detectspokenlanguage, detect_langs
#from face_recognize import FaceRecognize
#from myplace import Myplace
#comment out if you use

##spell checker
#from spellchecker import SpellChecker
#from textblob import Word
#from autocorrect import Speller
#import speech_recognition as sr
#print(sr.__version__) #find the latest
#import spacy
#from flair.data import Sentence
#from flair.models import SequenceTagger
#from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer
#from translate import Translator

#image to text
#from PIL import Image
#import pytesseract
#from sendemail import Sendemail


from bs4 import BeautifulSoup
import subprocess
import os
from yourappdb import query_db, get_db
from flask import g

app = Flask(__name__)
app.secret_key="any string"
def init_db():
    with app.app_context():
        db = get_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()
init_db()

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

@app.route("/")
def hello_world():
    user = query_db('select * from contacts')
    the_username = "anonyme"
    one_user = query_db('select * from contacts where first_name = ?',
                [the_username], one=True)
    return render_template("hey.html", users=user, one_user=one_user, the_title="my title")
@app.route("/add_one_scene", methods=["GET","POST"])
def add_one_scene():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)

        uploaded_file = request.files['pic']
        if uploaded_file.filename != '':
            uploaded_file.save(os.path.join('static/photos', uploaded_file.filename))

        hey["pic"]=uploaded_file.filename


        touslesmusic= query_db("select * from music")

        tousleschapter= query_db("select * from chapter")

        one_user = query_db("insert into scene (title,music_id,pic,chapter_id) values (:title,:music_id,:pic,:chapter_id)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from scene')


        return render_template("sceneform.html", scenes=user, one_user=one_user, the_title="add new scene", touslesmusic=touslesmusic, tousleschapter=tousleschapter)


    touslesmusic= query_db("select * from music")

    tousleschapter= query_db("select * from chapter")

    user = query_db('select * from scene')
    one_user = query_db("select * from scene limit 1", one=True)
    return render_template("sceneform.html", scenes=user, one_user=one_user, the_title="add new scene", touslesmusic=touslesmusic, tousleschapter=tousleschapter)

@app.route("/add_one_scene_has_character", methods=["GET","POST"])
def add_one_scene_has_character():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)


        touslesscene= query_db("select * from scene")

        touslescharacter= query_db("select * from character")

        one_user = query_db("insert into scene_has_character (scene_id,character_id) values (:scene_id,:character_id)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from scene_has_character')


        return render_template("scene_has_characterform.html", scene_has_characters=user, one_user=one_user, the_title="add new scene_has_character", touslesscene=touslesscene, touslescharacter=touslescharacter)


    touslesscene= query_db("select * from scene")

    touslescharacter= query_db("select * from character")

    user = query_db('select * from scene_has_character')
    one_user = query_db("select * from scene_has_character limit 1", one=True)
    return render_template("scene_has_characterform.html", scene_has_characters=user, one_user=one_user, the_title="add new scene_has_character", touslesscene=touslesscene, touslescharacter=touslescharacter)

@app.route("/add_one_character", methods=["GET","POST"])
def add_one_character():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)

        uploaded_file = request.files['pic']
        if uploaded_file.filename != '':
            uploaded_file.save(os.path.join('static/photos', uploaded_file.filename))

        hey["pic"]=uploaded_file.filename


        touslescountry= query_db("select * from country")

        one_user = query_db("insert into character (name,pic,biography,country_id) values (:name,:pic,:biography,:country_id)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from character')


        return render_template("characterform.html", characters=user, one_user=one_user, the_title="add new character", touslescountry=touslescountry)


    touslescountry= query_db("select * from country")

    user = query_db('select * from character')
    one_user = query_db("select * from character limit 1", one=True)
    return render_template("characterform.html", characters=user, one_user=one_user, the_title="add new character", touslescountry=touslescountry)

@app.route("/add_one_country", methods=["GET","POST"])
def add_one_country():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)


        one_user = query_db("insert into country (name) values (:name)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from country')


        return render_template("countryform.html", countrys=user, one_user=one_user, the_title="add new country")


    user = query_db('select * from country')
    one_user = query_db("select * from country limit 1", one=True)
    return render_template("countryform.html", countrys=user, one_user=one_user, the_title="add new country")

@app.route("/add_one_chapter", methods=["GET","POST"])
def add_one_chapter():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)


        one_user = query_db("insert into chapter (title,order,content) values (:title,:order,:content)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from chapter')


        return render_template("chapterform.html", chapters=user, one_user=one_user, the_title="add new chapter")


    user = query_db('select * from chapter')
    one_user = query_db("select * from chapter limit 1", one=True)
    return render_template("chapterform.html", chapters=user, one_user=one_user, the_title="add new chapter")

@app.route("/add_one_music", methods=["GET","POST"])
def add_one_music():

    if request.method == 'POST':

        the_username = "anonyme"
        hey=dict(request.form)

        uploaded_file = request.files['pic']
        if uploaded_file.filename != '':
            uploaded_file.save(os.path.join('static/photos', uploaded_file.filename))

        hey["pic"]=uploaded_file.filename


        touslesscene= query_db("select * from scene")

        one_user = query_db("insert into music (title,composer,score,scene_id,time_signature,key_signature,pic) values (:title,:composer,:score,:scene_id,:time_signature,:key_signature,:pic)",hey, one=True)
        mylastrowid=str(one_user["myid"])
        user = query_db('select * from music')


        file_pointer = open("./samplescoreexample.ly")
        contents = file_pointer.read()
        contents=contents.replace("KEYSCOREHERE", request.form["key_signature"].replace(" "," \\")).replace("TIMESCOREHERE", request.form["time_signature"]).replace("CONTENTSCOREHERE", request.form["score"])
        file_pointer = open("./static/scores/music_score_sample_"+mylastrowid+".ly", "w")
        file_pointer.write(contents)
        file_pointer.close()
        file_pointer = open("./static/scores/music_score_sample_"+mylastrowid+".html", "w")
        file_pointer.write("<lilypond staffsize=34>"+contents+"</lilypond>")
        file_pointer.close()
        p1=subprocess.Popen(["lilypond-book", "static/scores/music_score_sample_"+mylastrowid+".html", "-f", "html", "--output", "static/scores/samplescoremusic_score"+mylastrowid]) 
        exit_codes = [p.wait() for p in (p1,)]

        try:
            f= open("static/scores/samplescoremusic_score"+mylastrowid+"/music_score_sample_"+mylastrowid+".html")
            s = f.read()
            soup = BeautifulSoup(s)

            picvalue=dict({'pic': "static/scores/samplescoremusic_score"+mylastrowid+"/"+soup.find('img').get("src"), 'id': mylastrowid})
        except:
            picvalue=dict({'pic': "", "id": mylastrowid})
        print(picvalue)
        hey["pic"]=picvalue["pic"]


        hello_there = query_db("update music set pic = :pic where id = :id",picvalue, one=True)

        return render_template("musicform.html", musics=user, one_user=one_user, the_title="add new music", touslesscene=touslesscene)


    touslesscene= query_db("select * from scene")

    user = query_db('select * from music')
    one_user = query_db("select * from music limit 1", one=True)
    return render_template("musicform.html", musics=user, one_user=one_user, the_title="add new music", touslesscene=touslesscene)

