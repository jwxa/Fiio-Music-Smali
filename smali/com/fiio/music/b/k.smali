.class public final Lcom/fiio/music/b/k;
.super Ljava/lang/Object;
.source "SongDao.java"


# instance fields
.field private a:Lcom/fiio/music/b/d;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/b/k;->b:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/fiio/music/b/d;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    .line 35
    iput-object p1, p0, Lcom/fiio/music/b/k;->b:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    const/4 v0, -0x1

    .line 152
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 153
    new-instance v2, Lcom/fiio/music/b/d;

    invoke-direct {v2, p2}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT _id,albumPath FROM song WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 154
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 157
    const-string v4, "count"

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    :goto_0
    const-string v4, "picPath"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 175
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 176
    return-object v1

    .line 160
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 163
    :cond_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 165
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 769
    const-string v0, "\u5f00\u59cb\u641c\u7d22\u6570\u636e\u5e93"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 770
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "SELECT A._id, A.albumPath, A.sampleRate, A.EncodingRate, A.bitRate, A.isLike, A.songname_ascii, A.track, A.discoNum, A.channels, A.displayName,B.name AS Bname,C.name AS Cname,D.name AS Dname,A.songname AS Aname,A.albumid,A.artistid, A.styleid,C.picPath AS Dpicpath,C.picPath AS Cpicpath,B.picPath AS Bpicpath,A.filePath,A.durationTime,A.isCue,A.year,A.SortsongFirst,A.SortsongName,A.cue_songName AS CUENAME,A.cue_artistName AS CUEARTIST,A.cue_startTime AS CUESTART,A.cue_durationTime AS CUEDURATION,A.isSacd,A.sacd_songName AS SACDNAME,A.sacd_artistName AS SACDARTIST,A.sacd_startTime AS SACDSTART,A.sacd_durationTime AS SACDDURATION FROM song AS A INNER JOIN artist AS B ON  A.artistid=B._id INNER JOIN album AS C ON A.albumid=C._id INNER JOIN Style AS D ON A.styleid=D._id "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ORDER BY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-virtual {v3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 822
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 880
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u641c\u7d22\u6570\u636e\u5e93\u7ed3\u675f\uff0c\u8017\u65f6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 882
    return-object v6

    .line 823
    :cond_0
    new-instance v8, Lcom/fiio/music/entity/Song;

    invoke-direct {v8}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 824
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 825
    const-string v0, "albumPath"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 827
    const-string v0, "displayName"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 826
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 828
    new-instance v0, Lcom/fiio/music/entity/Artist;

    .line 829
    const-string v9, "artistid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 828
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 830
    const-string v10, "Bname"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 829
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 830
    const-string v11, "Bpicpath"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 831
    new-instance v0, Lcom/fiio/music/entity/Album;

    .line 832
    const-string v9, "albumid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 831
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 833
    const-string v10, "Cname"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 832
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 833
    const-string v11, "Cpicpath"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 834
    new-instance v0, Lcom/fiio/music/entity/SongStyle;

    .line 835
    const-string v9, "styleid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 834
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 836
    const-string v10, "Dname"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 835
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 836
    const-string v11, "Dpicpath"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 837
    const-string v0, "Aname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 839
    const-string v0, "filePath"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 838
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 841
    const-string v0, "durationTime"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 840
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 843
    const-string v0, "channels"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 842
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 845
    const-string v0, "track"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 844
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 847
    const-string v0, "discoNum"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 846
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setDisc(I)V

    .line 850
    const-string v0, "sampleRate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 851
    const-string v0, "EncodingRate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 852
    const-string v0, "bitRate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 853
    const-string v0, "isLike"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setIsLike(I)V

    .line 854
    const-string v0, "songname_ascii"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setNameAscii(I)V

    .line 855
    const-string v0, "isCue"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "year"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 858
    const-string v0, "CUENAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 859
    const-string v0, "CUEARTIST"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 860
    const-string v0, "CUESTART"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 861
    const-string v0, "CUEDURATION"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 863
    const-string v0, "isSacd"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 864
    const-string v0, "SACDNAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    .line 865
    const-string v0, "SACDARTIST"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    .line 866
    const-string v0, "SACDSTART"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    .line 867
    const-string v0, "SACDDURATION"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    .line 869
    const-string v0, "songname_ascii"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const v9, 0xf4240

    div-int/2addr v0, v9

    .line 870
    const/16 v9, 0x7a

    if-gt v0, v9, :cond_1

    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    .line 871
    add-int/lit8 v0, v0, -0x20

    .line 874
    :cond_1
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    .line 877
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 855
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 863
    goto :goto_2
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT A._id, A.albumPath, A.sampleRate, A.EncodingRate, A.bitRate, A.isLike, A.songname_ascii, A.track, A.discoNum, A.channels, A.displayName,B.name AS Bname,C.name AS Cname,D.name AS Dname,A.songname AS Aname,A.albumid,A.artistid, A.styleid,C.picPath AS Dpicpath,C.picPath AS Cpicpath,B.picPath AS Bpicpath,A.filePath,A.durationTime,A.isCue,A.year,A.SortsongFirst,A.SortsongName,A.cue_songName AS CUENAME,A.cue_artistName AS CUEARTIST,A.cue_startTime AS CUESTART,A.cue_durationTime AS CUEDURATION,A.isSacd,A.sacd_songName AS SACDNAME,A.sacd_artistName AS SACDARTIST,A.sacd_startTime AS SACDSTART,A.sacd_durationTime AS SACDDURATION FROM song AS A INNER JOIN artist AS B ON  A.artistid=B._id INNER JOIN album AS C ON A.albumid=C._id INNER JOIN Style AS D ON A.styleid=D._id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 945
    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    .line 121
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM song WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v0

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 128
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    .line 183
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 185
    const-string v2, "SELECT COUNT(*) FROM song"

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 189
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 191
    return v0
.end method

.method public final declared-synchronized a(D)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2649
    monitor-enter p0

    .line 2650
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2651
    const-string v2, "SELECT COUNT(*) FROM song WHERE SortsongFirst < ?"

    .line 2652
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2651
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2653
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2654
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2658
    :cond_0
    monitor-exit p0

    return v0

    .line 2649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([I)I
    .locals 14

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    array-length v1, p1

    new-array v11, v1, [Ljava/lang/String;

    .line 235
    const/4 v2, 0x0

    .line 236
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    :goto_0
    array-length v1, p1

    if-lt v8, v1, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 293
    return v9

    .line 237
    :cond_0
    const-string v1, "?,"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    aget v1, p1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v8

    .line 239
    const-string v1, "song"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 240
    const-string v4, "artistid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "albumid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "styleid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "filePath"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 241
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, v11, v8

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 239
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 242
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 244
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 245
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 246
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 248
    const-string v5, "SELECT artistid FROM song WHERE artistid=?"

    .line 251
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    .line 248
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 252
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 253
    const-string v6, "artist"

    const-string v7, "_id=?"

    .line 254
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v13

    .line 253
    invoke-virtual {v0, v6, v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 258
    const-string v2, "SELECT albumid FROM song WHERE albumid=?"

    .line 261
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 258
    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 262
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 263
    const-string v5, "album"

    const-string v6, "_id=?"

    .line 264
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    .line 263
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 268
    const-string v2, "SELECT style FROM song WHERE styleid=?"

    .line 271
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 268
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 273
    const-string v3, "Style"

    const-string v5, "_id=?"

    .line 274
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 273
    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 283
    const-string v1, "song"

    .line 284
    const-string v2, "_id =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v5, v11, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 283
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    add-int/lit8 v2, v9, 0x1

    .line 236
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    goto/16 :goto_0
.end method

.method public final varargs a([Ljava/lang/Integer;)I
    .locals 14

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    array-length v1, p1

    new-array v13, v1, [Ljava/lang/String;

    .line 403
    const/4 v4, 0x0

    .line 404
    const/4 v3, 0x0

    .line 405
    const/4 v2, 0x0

    .line 406
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 407
    :goto_0
    array-length v1, p1

    if-lt v8, v1, :cond_0

    .line 453
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, "song"

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id in("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 460
    :try_start_0
    const-string v0, "artistid"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 461
    new-instance v2, Lcom/fiio/music/b/c;

    iget-object v3, p0, Lcom/fiio/music/b/k;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;I)I

    .line 462
    const-string v0, "albumid"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 463
    new-instance v2, Lcom/fiio/music/b/b;

    iget-object v3, p0, Lcom/fiio/music/b/k;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;I)I

    .line 464
    const-string v0, "styleid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 465
    new-instance v2, Lcom/fiio/music/b/l;

    iget-object v3, p0, Lcom/fiio/music/b/k;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_1
    return v1

    .line 408
    :cond_0
    const-string v1, "?,"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    aget-object v1, p1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v8

    .line 410
    const-string v1, "song"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 411
    const-string v4, "artistid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "albumid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "styleid"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 412
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, v13, v8

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 410
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 415
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 416
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 418
    const-string v5, "SELECT artistid FROM song WHERE artistid=?"

    .line 421
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 418
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 423
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 424
    const-string v6, "artist"

    const-string v7, "_id=?"

    .line 425
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 424
    invoke-virtual {v0, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 429
    const-string v5, "SELECT albumid FROM song WHERE albumid=?"

    .line 432
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 429
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 434
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 435
    const-string v6, "album"

    const-string v7, "_id=?"

    .line 436
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 435
    invoke-virtual {v0, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 440
    const-string v5, "SELECT style FROM song WHERE styleid=?"

    .line 443
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 440
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 445
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 446
    const-string v6, "Style"

    const-string v7, "_id=?"

    .line 447
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 446
    invoke-virtual {v0, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 451
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 407
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    goto/16 :goto_0

    .line 468
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    move v2, v9

    move v3, v10

    move v4, v11

    goto :goto_2
.end method

.method public final a(Lcom/fiio/music/entity/Song;)J
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v2, "displayName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "filePath"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "albumPath"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbumPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "mimeType"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "songname"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "albumid"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v2, "netUrl"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getNetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "durationTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v2, "size"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "artistid"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "playerList"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getPlayerList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "isDownFinish"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isDownFinish()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    const-string v2, "isLike"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isLike()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v2, "isNet"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isNet()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    const-string v2, "year"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "track"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v2, "discoNum"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDisc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "channels"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "styleid"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v2, "style"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "playCount"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getPlayCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v2, "lastPlayTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getLastPlayTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "sampleRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v2, "EncodingRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "bitRate"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v2, "isCue"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    const-string v2, "cue_startTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v2, "cue_durationTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v2, "cue_songName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_songName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "cue_artistName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_artistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "isSacd"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string v2, "sacd_startTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_startTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v2, "sacd_durationTime"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v2, "sacd_songName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_songName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "sacd_artistName"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_artistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "song"

    const-string v3, "songname"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    return-wide v2
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2675
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 734
    const-string v2, "SELECT A._id ,A.songname ,B.name ,A.filePath FROM song AS A INNER JOIN artist AS B ON A.artistid =B._id WHERE songname LIKE ? ORDER BY songname_ascii ASC"

    .line 742
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 736
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 744
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 753
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 754
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 755
    return-object v0

    .line 745
    :cond_0
    new-instance v3, Lcom/fiio/music/i/d;

    invoke-direct {v3}, Lcom/fiio/music/i/d;-><init>()V

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/i/d;->a(Ljava/lang/String;)V

    .line 747
    const-string v4, "songname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/i/d;->d(Ljava/lang/String;)V

    .line 748
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/i/d;->e(Ljava/lang/String;)V

    .line 749
    const-string v4, "filePath"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/i/d;->c(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v3}, Lcom/fiio/music/i/d;->l()V

    .line 751
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    const-string v0, " WHERE A.albumid=? and A.artistid=?"

    .line 955
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "discoNum ASC , track ASC"

    .line 953
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a([ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 305
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 316
    return-object v3

    .line 306
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT _id FROM song WHERE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? ORDER BY _id DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aget v6, p1, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 306
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 310
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 313
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1112
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1113
    aget-object v0, p1, v2

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1115
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE song SET size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2352
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2350
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2353
    return-void
.end method

.method public final a(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1295
    .line 1296
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1297
    const-string v0, "SELECT _id FROM song WHERE _id=?"

    .line 1298
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1297
    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1299
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1302
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1303
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1304
    if-eq v0, v1, :cond_0

    move v0, v2

    .line 1307
    :goto_1
    return v0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b([ILjava/lang/String;)I
    .locals 13

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 330
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 342
    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_2

    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 394
    return v9

    .line 331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT _id FROM song WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=? ORDER BY _id DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 331
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 335
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 344
    :cond_2
    const-string v1, "song"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 345
    const-string v4, "artistid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "albumid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "styleid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "filePath"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 346
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 344
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 347
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 349
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 350
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 351
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 354
    const-string v5, "SELECT artistid FROM song WHERE artistid=?"

    .line 357
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    .line 354
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 358
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_3

    .line 359
    const-string v6, "artist"

    const-string v7, "_id=?"

    .line 360
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    .line 359
    invoke-virtual {v0, v6, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 364
    const-string v2, "SELECT albumid FROM song WHERE albumid=?"

    .line 367
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 364
    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 368
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    .line 369
    const-string v5, "album"

    const-string v6, "_id=?"

    .line 370
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    .line 369
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 374
    const-string v2, "SELECT style FROM song WHERE styleid=?"

    .line 377
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 374
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 378
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_5

    .line 379
    const-string v3, "Style"

    const-string v5, "_id=?"

    .line 380
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 379
    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 389
    const-string v2, "song"

    .line 390
    const-string v3, "_id =?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v5

    .line 389
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 391
    add-int/lit8 v2, v9, 0x1

    .line 343
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    goto/16 :goto_1
.end method

.method public final b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 892
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1946
    const-string v0, ""

    .line 1947
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT filePath FROM song WHERE _id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1948
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1951
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1954
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1955
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1956
    return-object v0

    .line 1952
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 3
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
    .line 478
    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "songname_ascii ASC"

    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    const-string v0, " WHERE A.albumid=? and A.styleid=?"

    .line 965
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "discoNum ASC , track ASC"

    .line 963
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)V
    .locals 3

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE song SET durationTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2362
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2360
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2363
    return-void
.end method

.method public final c(I)Lcom/fiio/music/entity/Song;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2095
    const/4 v0, 0x0

    .line 2096
    iget-object v3, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2097
    const-string v3, "SELECT  A.displayName,B.name AS Bname,C.name AS Cname,A.songname AS Aname,A.albumid,A.albumrealid,A.artistid,A.styleid,D.picPath AS Dpicpath,C.picPath AS Cpicpath,B.picPath AS Bpicpath,A.filePath,A.durationTime,A.size,A.year,A.albumPath,A._id,A.track,A.channels,A.style,A.playCount,A.lastPlayTime, A.sampleRate, A.EncodingRate, A.bitRate, A.isCue,A.cue_songName AS CUENAME,A.cue_artistName AS CUEARTIST,A.cue_startTime AS CUESTART,A.cue_durationTime AS CUEDURATION,A.isSacd,A.sacd_songName AS SACDNAME,A.sacd_artistName AS SACDARTIST,A.sacd_startTime AS SACDSTART,A.sacd_durationTime AS SACDDURATION FROM song AS A INNER JOIN artist AS B ON  A.artistid=B._id INNER JOIN album AS C ON A.albumid=C._id INNER JOIN Style AS D ON A.styleid=D._id WHERE A._id=?"

    .line 2139
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2097
    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2141
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2142
    new-instance v3, Lcom/fiio/music/entity/Song;

    invoke-direct {v3}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 2144
    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 2146
    const-string v0, "displayName"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2145
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 2147
    new-instance v0, Lcom/fiio/music/entity/Artist;

    .line 2148
    const-string v6, "artistid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2147
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2149
    const-string v7, "Bname"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2148
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2150
    const-string v8, "Bpicpath"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2149
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 2151
    new-instance v0, Lcom/fiio/music/entity/Album;

    .line 2152
    const-string v6, "albumid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2151
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2153
    const-string v7, "Cname"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2152
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2154
    const-string v8, "Cpicpath"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2153
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 2155
    const-string v0, "albumPath"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 2156
    const-string v0, "Aname"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 2158
    const-string v0, "filePath"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2157
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 2159
    const-string v0, "year"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 2161
    const-string v0, "durationTime"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2160
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 2162
    const-string v0, "size"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 2163
    const-string v0, "track"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 2164
    const-string v0, "channels"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 2165
    new-instance v0, Lcom/fiio/music/entity/SongStyle;

    const-string v6, "styleid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2166
    const-string v7, "style"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2167
    const-string v8, "Dpicpath"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 2168
    const-string v0, "playCount"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setPlayCount(I)V

    .line 2169
    const-string v0, "lastPlayTime"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setLastPlayTime(I)V

    .line 2170
    const-string v0, "sampleRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 2171
    const-string v0, "EncodingRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 2172
    const-string v0, "bitRate"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 2173
    const-string v0, "isCue"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 2176
    const-string v0, "CUENAME"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 2177
    const-string v0, "CUEARTIST"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 2178
    const-string v0, "CUESTART"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 2179
    const-string v0, "CUEDURATION"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 2181
    const-string v0, "isSacd"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 2182
    const-string v0, "SACDNAME"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    .line 2183
    const-string v0, "SACDARTIST"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    .line 2184
    const-string v0, "SACDSTART"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    .line 2185
    const-string v0, "SACDDURATION"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    move-object v0, v3

    .line 2188
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2189
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2190
    return-object v0

    :cond_1
    move v0, v2

    .line 2173
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 2181
    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 12
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

    .line 543
    new-array v0, v2, [Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "A._id DESC"

    iget-object v4, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v4}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v5, "\u5f00\u59cb\u641c\u7d22\u6570\u636e\u5e93"

    invoke-static {v5}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SELECT A._id, A.albumPath, A.sampleRate, A.EncodingRate, A.bitRate, A.isLike, A.songname_ascii, A.track, A.channels, A.displayName,B.name AS Bname,C.name AS Cname,D.name AS Dname,A.songname AS Aname,A.albumid,A.artistid, A.styleid,C.picPath AS Dpicpath,C.picPath AS Cpicpath,B.picPath AS Bpicpath,A.filePath,A.durationTime,A.isCue,A.SortsongFirst,A.SortsongName,A.cue_songName AS CUENAME,A.cue_artistName AS CUEARTIST,A.cue_startTime AS CUESTART,A.cue_durationTime AS CUEDURATION,A.isSacd,A.sacd_songName AS SACDNAME,A.sacd_artistName AS SACDARTIST,A.sacd_startTime AS SACDSTART,A.sacd_durationTime AS SACDDURATION FROM song AS A INNER JOIN artist AS B ON  A.artistid=B._id INNER JOIN album AS C ON A.albumid=C._id INNER JOIN Style AS D ON A.styleid=D._id WHERE 1=1  ORDER BY "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " LIMIT ?"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u641c\u7d22\u6570\u636e\u5e93\u7ed3\u675f\uff0c\u8017\u65f6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    return-object v5

    :cond_0
    new-instance v8, Lcom/fiio/music/entity/Song;

    invoke-direct {v8}, Lcom/fiio/music/entity/Song;-><init>()V

    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    const-string v0, "albumPath"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    new-instance v0, Lcom/fiio/music/entity/Artist;

    const-string v9, "artistid"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "Bname"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Bpicpath"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    new-instance v0, Lcom/fiio/music/entity/Album;

    const-string v9, "albumid"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "Cname"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Cpicpath"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    new-instance v0, Lcom/fiio/music/entity/SongStyle;

    const-string v9, "styleid"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "Dname"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Dpicpath"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    const-string v0, "Aname"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    const-string v0, "durationTime"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    const-string v0, "channels"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    const-string v0, "track"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    const-string v0, "sampleRate"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    const-string v0, "EncodingRate"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    const-string v0, "bitRate"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    const-string v0, "isLike"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setIsLike(I)V

    const-string v0, "isCue"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    const-string v0, "CUEARTIST"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    const-string v0, "CUESTART"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    const-string v0, "CUEDURATION"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    const-string v0, "isSacd"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    const-string v0, "SACDNAME"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    const-string v0, "SACDARTIST"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    const-string v0, "SACDSTART"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    const-string v0, "SACDDURATION"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    const-string v0, "songname_ascii"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const v9, 0xf4240

    div-int/2addr v0, v9

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_1

    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    add-int/lit8 v0, v0, -0x20

    :cond_1
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    if-eqz p1, :cond_0

    .line 1105
    const-string v0, " WHERE A.artistid=? "

    .line 1106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "songname_ascii ASC"

    .line 1105
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1124
    const-string v0, " WHERE A.artistid=? "

    .line 1125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SortsongFirst"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c([ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2064
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2065
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 2066
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 2077
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2078
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 2081
    return-object v2

    .line 2067
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT _id FROM song WHERE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? ORDER BY _id DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2070
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aget v6, p1, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2067
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2071
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2074
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2066
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2072
    :cond_1
    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2079
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1724
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1725
    const-string v2, "SELECT filePath FROM song ORDER BY _id DESC"

    .line 1727
    const/4 v3, 0x0

    .line 1725
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1728
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1733
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1734
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1735
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1729
    :cond_0
    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1731
    const-string v4, "filePath"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1730
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1731
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    if-eqz p1, :cond_0

    .line 1178
    const-string v0, " WHERE A.albumid=?"

    .line 1179
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "discoNum ASC , track ASC"

    .line 1178
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1135
    const-string v0, " WHERE A.artistid=? "

    .line 1136
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SortsongName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 2663
    const-string v0, "WHERE Cname =? and Bname =?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 2664
    const-string v2, "songname_ascii ASC"

    .line 2663
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1744
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1745
    const-string v2, "SELECT filePath , songname FROM song WHERE isCue = 1  ORDER BY _id DESC"

    .line 1747
    const/4 v3, 0x0

    .line 1745
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1748
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1756
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1757
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1758
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1749
    :cond_0
    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1751
    const-string v4, "filePath"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1750
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1752
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1753
    const-string v4, "songname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1754
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    .line 1190
    const-string v0, " WHERE A.styleid=?"

    .line 1191
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "songname_ascii ASC"

    .line 1190
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 2681
    const-string v0, "WHERE Cname =? and Dname =?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 2682
    const-string v2, "songname_ascii ASC"

    .line 2681
    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1768
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1769
    const-string v2, "SELECT filePath , songname FROM song WHERE isSacd = 1  ORDER BY _id DESC"

    .line 1771
    const/4 v3, 0x0

    .line 1769
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1772
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1780
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1781
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1782
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1773
    :cond_0
    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1775
    const-string v4, "filePath"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1774
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1776
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1777
    const-string v4, "songname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1778
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1314
    const/4 v0, -0x1

    .line 1315
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT _id FROM song WHERE filePath = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1316
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1318
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1319
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1321
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1322
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1323
    if-lez v0, :cond_1

    .line 1324
    const/4 v0, 0x1

    .line 1326
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Lcom/fiio/music/entity/Song;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2199
    const/4 v0, 0x0

    .line 2200
    iget-object v3, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v3}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2201
    const-string v3, "SELECT filePath,albumPath,isCue,isSacd,track,songname FROM song WHERE _id=?"

    .line 2210
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2201
    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2212
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2213
    new-instance v3, Lcom/fiio/music/entity/Song;

    invoke-direct {v3}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 2214
    const-string v0, "songname"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 2215
    const-string v0, "albumPath"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 2217
    const-string v0, "filePath"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2216
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 2218
    const-string v0, "isSacd"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 2219
    const-string v0, "isCue"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 2220
    const-string v0, "track"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    move-object v0, v3

    .line 2222
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2223
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2224
    return-object v0

    :cond_1
    move v0, v2

    .line 2218
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2219
    goto :goto_1
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1891
    const-string v1, "UPDATE song SET isLike=0 WHERE isLike= 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1895
    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2228
    const-string v0, ""

    .line 2229
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2230
    const-string v2, "select style._id FROM style where style.name =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2231
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2232
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2234
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2235
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2236
    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 3
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
    .line 2416
    const-string v0, " WHERE A.isDownFinish=1"

    const/4 v1, 0x0

    const-string v2, "songname_ascii ASC"

    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2242
    const-string v0, ""

    .line 2243
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2244
    const-string v2, "select artist._id FROM artist where artist.name =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2245
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2246
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2248
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2249
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2250
    return-object v0
.end method

.method public final i()Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 2486
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2490
    const-string v0, "SELECT COUNT(1) FROM song"

    invoke-virtual {v3, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2491
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2492
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2494
    div-int/lit8 v5, v4, 0x3

    .line 2496
    const-string v0, "SELECT filePath , _id FROM song"

    invoke-virtual {v3, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move v0, v1

    .line 2498
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2518
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2519
    :goto_0
    return v1

    .line 2499
    :cond_1
    const-string v7, "filePath"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2500
    if-eqz v7, :cond_0

    .line 2501
    const-string v8, "_id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2502
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2504
    new-array v7, v2, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v7}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    .line 2505
    add-int/lit8 v0, v0, 0x1

    .line 2507
    :cond_2
    const/16 v7, 0x12c

    if-gt v0, v7, :cond_3

    if-le v0, v5, :cond_0

    .line 2509
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "song"

    invoke-virtual {v1, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2511
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2512
    const-string v1, "long"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u6267\u884c\u5168\u90e8\u5220\u9664\u64cd\u4f5c \u6570\u636e\u5e93\u6761\u76ee\u6570:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u7edf\u8ba1\u5230\u7684\u7a7a\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2513
    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2256
    const-string v0, ""

    .line 2257
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2258
    const-string v2, "select album._id FROM album where album.name =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2259
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2260
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2262
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2263
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2264
    return-object v0
.end method

.method public final k(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2549
    const/4 v0, -0x1

    .line 2550
    const-string v2, "SELECT A._id, A.displayName,B.name AS Bname,C.name AS Cname,A.songname AS Aname,A.albumid,A.artistid,C.picPath AS Cpicpath,B.picPath AS Bpicpath,A.filePath,A.durationTime FROM song AS A INNER JOIN artist AS B ON  A.artistid=B._id INNER JOIN album AS C ON A.albumid=C._id ORDER BY displayName DESC"

    .line 2562
    const/4 v3, 0x0

    .line 2550
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2564
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2572
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2573
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2574
    return v0

    .line 2566
    :cond_1
    const-string v3, "filePath"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2565
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2567
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2568
    const-string v0, "xyz"

    const-string v3, "#########################"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public final l(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 2613
    const/4 v0, -0x1

    .line 2614
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2615
    const-string v2, "SELECT _id FROM song WHERE song.filePath LIKE ?"

    .line 2618
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2615
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2619
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2620
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2622
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2623
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2624
    return v0
.end method

.method public final m(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2629
    .line 2630
    iget-object v1, p0, Lcom/fiio/music/b/k;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2631
    const-string v2, "SELECT COUNT(*) FROM song WHERE song.filePath LIKE ?"

    .line 2634
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2631
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2635
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2636
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2638
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2639
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2640
    return v0
.end method
