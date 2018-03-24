.class public final Lcom/fiio/music/b/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHpler.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    const-string v0, "fiiomusic.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    iput-object p1, p0, Lcom/fiio/music/b/d;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 27
    const-string v0, "CREATE TABLE album(_id INTEGER PRIMARY KEY AUTOINCREMENT,name NVARCHAR(100),album_ascii INTEGER,picPath NVARCHAR(300),count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "CREATE TABLE artist(_id INTEGER PRIMARY KEY AUTOINCREMENT,name NVARCHAR(100),artist_ascii INTEGER,picPath NVARCHAR(300),count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE TABLE Style(_id INTEGER PRIMARY KEY AUTOINCREMENT,name NVARCHAR(100),style_ascii INTEGER,picPath NVARCHAR(300),count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "CREATE TABLE playerList(_id INTEGER PRIMARY KEY AUTOINCREMENT,name NVARCHAR(100),date INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE TABLE song(_id INTEGER PRIMARY KEY AUTOINCREMENT,albumid INTEGER,albumrealid INTEGER,artistid INTEGER,songname NVARCHAR(100),songname_ascii INTEGER,displayName NVARCHAR(100),songfilename_ascii INTEGER,netUrl NVARCHAR(500),durationTime INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),filePath NVARCHAR(300),playerList NVARCHAR(500),isNet INTEGER,mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,discoNum INTEGER,channels INTEGER,styleid INTEGER,style INTEGER,playCount INTEGER,lastPlayTime INTEGER,isDownFinish INTEGER,isCue INTEGER,SortsongFirst INTEGER,SortsongName INTEGER,cue_startTime INTEGER,cue_durationTime INTEGER,cue_songName NVARCHAR(100),cue_artistName NVARCHAR(100),isSacd INTEGER,sacd_startTime INTEGER,sacd_durationTime INTEGER,sacd_songName NVARCHAR(100),sacd_artistName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE PlayerHistory(_id INTEGER PRIMARY KEY AUTOINCREMENT,songId INTEGER,songname NVARCHAR(100),songAllname NVARCHAR(100),artist NVARCHAR(100),uri NVARCHAR(300),start_time INTEGER,end_time INTEGER,album NVARCHAR(100),style NVARCHAR(100),albumrealid INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,channels INTEGER,lastPlayTime INTEGER,isCue INTEGER,cue_startTime INTEGER,cue_durationTime INTEGER,cue_songName NVARCHAR(100),cue_artistName NVARCHAR(100),isSacd INTEGER,sacd_startTime INTEGER,sacd_durationTime INTEGER,sacd_songName NVARCHAR(100),sacd_artistName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "CREATE TABLE SearchHistory(_id INTEGER PRIMARY KEY AUTOINCREMENT,songId INTEGER,songname NVARCHAR(100),artist NVARCHAR(100),uri NVARCHAR(300),start_time INTEGER,end_time INTEGER,album NVARCHAR(100),albumrealid INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,channels INTEGER,lastPlayTime INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "CREATE TABLE OftastAudio(_id INTEGER PRIMARY KEY AUTOINCREMENT,path NVARCHAR(300),songId INTEGER,name NVARCHAR(100),songAllname NVARCHAR(100),artist NVARCHAR(100),lenth INTEGER,album NVARCHAR(100),style NVARCHAR(100),albumrealid INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,channels INTEGER,play_count INTEGER,lastPlayTime INTEGER,isCue INTEGER,cue_startTime INTEGER,cue_durationTime INTEGER,cue_songName NVARCHAR(100),cue_artistName NVARCHAR(100),isSacd INTEGER,sacd_startTime INTEGER,sacd_durationTime INTEGER,sacd_songName NVARCHAR(100),sacd_artistName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v0, "CREATE TABLE downLoadInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,url NVARCHAR(300),name NVARCHAR(300),artist NVARCHAR(100),album NVARCHAR(100),displayName NVARCHAR(100),filePath NVARCHAR(300),mimeType NVARCHAR(100),durationTime INTEGER,completeSize INTEGER,filesize INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string v0, "CREATE TABLE threadInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,startPosition INTEGER,endPosition INTEGER,completeSize INTEGER,downLoadInfoId INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v0, "CREATE TABLE Abnormaltracktable(_id INTEGER PRIMARY KEY AUTOINCREMENT,songPath NVARCHAR(300),songName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    const-string v0, "CREATE TABLE memorySong(songfilename_ascii INTEGER PRIMARY KEY,_id INTEGER,albumid INTEGER,albumrealid INTEGER,artistid INTEGER,songname NVARCHAR(100),songname_ascii INTEGER,displayName NVARCHAR(100),netUrl NVARCHAR(500),durationTime INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),filePath NVARCHAR(300),playerList NVARCHAR(500),isNet INTEGER,mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,discoNum INTEGER,channels INTEGER,styleid INTEGER,style INTEGER,playCount INTEGER,lastPlayTime INTEGER,isDownFinish INTEGER,isCue INTEGER,SortsongFirst INTEGER,SortsongName INTEGER,cue_startTime INTEGER,cue_durationTime INTEGER,cue_songName NVARCHAR(100),cue_artistName NVARCHAR(100),isSacd INTEGER,sacd_startTime INTEGER,sacd_durationTime INTEGER,sacd_songName NVARCHAR(100),sacd_artistName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE breakpoinInfo(downloadUrl NVARCHAR(100) PRIMARY KEY ,savePath NVARCHAR(100),fileName NVARCHAR(20),versionCode NVARCHAR(10),versionName NVARCHAR(20),downloadState NVARCHAR(20),totalSize NVARCHAR(20),finishedSize NVARCHAR(20),updateLog NVARCHAR(300))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO playerList(name,date) VALUES(?,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/b/d;->a:Landroid/content/Context;

    const v4, 0x7f0c0054

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 331
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 337
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p3, v0, :cond_0

    .line 339
    const-string v0, "DROP TABLE IF EXISTS memorySong"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string v0, "CREATE TABLE memorySong(songfilename_ascii INTEGER PRIMARY KEY,_id INTEGER ,albumid INTEGER,albumrealid INTEGER,artistid INTEGER,songname NVARCHAR(100),songname_ascii INTEGER,displayName NVARCHAR(100),netUrl NVARCHAR(500),durationTime INTEGER,size INTEGER,isLike INTEGER,albumPath NVARCHAR(300),filePath NVARCHAR(300),playerList NVARCHAR(500),isNet INTEGER,mimeType NVARCHAR(50),year INTEGER,bitRate INTEGER,EncodingRate INTEGER,sampleRate INTEGER,track INTEGER,discoNum INTEGER,channels INTEGER,styleid INTEGER,style INTEGER,playCount INTEGER,lastPlayTime INTEGER,isDownFinish INTEGER,isCue INTEGER,SortsongFirst INTEGER,SortsongName INTEGER,cue_startTime INTEGER,cue_durationTime INTEGER,cue_songName NVARCHAR(100),cue_artistName NVARCHAR(100),isSacd INTEGER,sacd_startTime INTEGER,sacd_durationTime INTEGER,sacd_songName NVARCHAR(100),sacd_artistName NVARCHAR(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 389
    :cond_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 391
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpgrade newVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, "DROP TABLE IF EXISTS breakpoinInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string v0, "CREATE TABLE breakpoinInfo(downloadUrl NVARCHAR(100) PRIMARY KEY ,savePath NVARCHAR(100),fileName NVARCHAR(20),versionCode NVARCHAR(10),versionName NVARCHAR(20),downloadState NVARCHAR(20),totalSize NVARCHAR(20),finishedSize NVARCHAR(20),updateLog NVARCHAR(300))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    const-string v0, "DROP TABLE IF EXISTS album"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string v0, "DROP TABLE IF EXISTS artist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    const-string v0, "DROP TABLE IF EXISTS playerList"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    const-string v0, "DROP TABLE IF EXISTS song"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    const-string v0, "DROP TABLE IF EXISTS Style"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v0, "DROP TABLE IF EXISTS PlayerHistory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 415
    const-string v0, "DROP TABLE IF EXISTS SearchHistory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const-string v0, "DROP TABLE IF EXISTS OftastAudio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    const-string v0, "DROP TABLE IF EXISTS downLoadInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    const-string v0, "DROP TABLE IF EXISTS threadInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v0, "DROP TABLE IF EXISTS Abnormaltracktable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    const-string v0, "DROP TABLE IF EXISTS memorySong"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string v0, "DROP TABLE IF EXISTS breakpoinInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQL --- oldversion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- > newversion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/fiio/music/b/d;->a:Landroid/content/Context;

    const-string v1, "SQLITE_UPGRADE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    invoke-virtual {p0, p1}, Lcom/fiio/music/b/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method
