.class public final Lcom/fiio/music/b/h;
.super Ljava/lang/Object;
.source "PlayHistoryDao.java"


# instance fields
.field private a:Lcom/fiio/music/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/fiio/music/b/d;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    .line 30
    return-void
.end method

.method private b(Lcom/fiio/music/entity/Song;)J
    .locals 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    const-string v0, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addPlayHistorytimesTamp="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "lastPlayTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v0, "songId"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v0, "songname"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "songAllname"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "artist"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "album"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "style"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "uri"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "start_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v0, "albumPath"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbumPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "end_time"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v0, "bitRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "EncodingRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "sampleRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v0, "size"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v0, "year"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "track"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "channels"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "isCue"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string v0, "cue_songName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_songName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "cue_artistName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_artistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "cue_startTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "cue_durationTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v0, "isSacd"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    const-string v0, "sacd_startTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_startTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "sacd_durationTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v0, "sacd_songName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_songName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "sacd_artistName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_artistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "PlayerHistory"

    const-string v3, "uri"

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    return-wide v2

    .line 79
    :cond_0
    const-string v0, " "

    goto/16 :goto_0

    .line 80
    :cond_1
    const-string v0, " "

    goto/16 :goto_1

    .line 81
    :cond_2
    const-string v0, " "

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-string v0, "SELECT songId, songname, _id, songAllname, artist, album, style, end_time, uri, albumrealid, albumPath, bitRate, EncodingRate, sampleRate, size, year, track, channels, isCue, cue_songName AS CUENAME, cue_artistName AS CUEARTIST, cue_startTime AS CUESTART, cue_durationTime AS CUEDURATION, isSacd, sacd_songName AS SACDNAME, sacd_artistName AS SACDARTIST, sacd_startTime AS SACDSTART, sacd_durationTime AS SACDDURATION FROM PlayerHistory WHERE 1=1 ORDER BY lastPlayTime DESC LIMIT ?"

    .line 153
    new-array v5, v2, [Ljava/lang/String;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 121
    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 155
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 196
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    return-object v4

    .line 156
    :cond_0
    new-instance v6, Lcom/fiio/music/entity/Song;

    invoke-direct {v6}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 157
    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setTempId(I)V

    .line 158
    const-string v0, "songId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 159
    new-instance v0, Lcom/fiio/music/entity/Artist;

    .line 160
    const-string v7, "artist"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 159
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    const-string v8, ""

    invoke-direct {v0, v1, v7, v8}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 161
    new-instance v0, Lcom/fiio/music/entity/Album;

    .line 162
    const-string v7, "album"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 161
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    const-string v8, ""

    invoke-direct {v0, v1, v7, v8}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 163
    new-instance v0, Lcom/fiio/music/entity/SongStyle;

    .line 164
    const-string v7, "style"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 163
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    const-string v8, ""

    invoke-direct {v0, v1, v7, v8}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 165
    const-string v0, "songname"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 166
    const-string v0, "songAllname"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 167
    const-string v0, "end_time"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 168
    const-string v0, "uri"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 169
    const-string v0, "albumPath"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 170
    const-string v0, "bitRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 171
    const-string v0, "EncodingRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 172
    const-string v0, "sampleRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 173
    const-string v0, "size"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 174
    const-string v0, "year"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 175
    const-string v0, "track"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 176
    const-string v0, "channels"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 178
    const-string v0, "isCue"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 181
    const-string v0, "CUENAME"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 182
    const-string v0, "CUEARTIST"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 183
    const-string v0, "CUESTART"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 184
    const-string v0, "CUEDURATION"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 187
    const-string v0, "isSacd"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 188
    const-string v0, "SACDNAME"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    .line 189
    const-string v0, "SACDARTIST"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    .line 190
    const-string v0, "SACDSTART"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    .line 191
    const-string v0, "SACDDURATION"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    .line 193
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 178
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 187
    goto :goto_2
.end method

.method public final a(Lcom/fiio/music/entity/Song;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v4}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT uri FROM PlayerHistory WHERE uri = ? and songname = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    if-lez v0, :cond_2

    .line 255
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    iget-object v3, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v5, "xyz"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updatePlayHistorytimesTamp="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "lastPlayTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "PlayerHistory"

    const-string v6, "songId=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v5, "xyz"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updatePlayHistorytimesTamp="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "lastPlayTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "PlayerHistory"

    const-string v6, "uri = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v0, "SELECT COUNT(*) FROM PlayerHistory"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/16 v3, 0x64

    if-lt v0, v3, :cond_5

    .line 261
    const/4 v0, -0x1

    iget-object v3, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT _id,min(lastPlayTime) FROM PlayerHistory WHERE 1=1"

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 262
    iget-object v3, p0, Lcom/fiio/music/b/h;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "PlayerHistory"

    const-string v5, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    invoke-direct {p0, p1}, Lcom/fiio/music/b/h;->b(Lcom/fiio/music/entity/Song;)J

    goto/16 :goto_0

    .line 265
    :cond_5
    invoke-direct {p0, p1}, Lcom/fiio/music/b/h;->b(Lcom/fiio/music/entity/Song;)J

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method
