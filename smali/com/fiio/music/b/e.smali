.class public final Lcom/fiio/music/b/e;
.super Ljava/lang/Object;
.source "DownLoadInfoDao.java"


# instance fields
.field private a:Lcom/fiio/music/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/fiio/music/b/d;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/b/e;->a:Lcom/fiio/music/b/d;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/b/e;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    const-string v1, "downLoadInfo"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    return v1
.end method

.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/DownLoadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/fiio/music/b/e;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v1}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 29
    const-string v2, "SELECT * FROM downLoadInfo ORDER BY _id"

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    return-object v0

    .line 31
    :cond_0
    new-instance v3, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-direct {v3}, Lcom/fiio/music/entity/DownLoadInfo;-><init>()V

    .line 32
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setId(I)V

    .line 33
    invoke-virtual {v3, v5}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadInfos(Ljava/util/List;)V

    .line 34
    const-string v4, "filesize"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setFileSize(I)V

    .line 35
    const-string v4, "url"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setUrl(Ljava/lang/String;)V

    .line 36
    const-string v4, "album"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setAlbum(Ljava/lang/String;)V

    .line 37
    const-string v4, "artist"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setArtist(Ljava/lang/String;)V

    .line 38
    const-string v4, "displayName"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setDisplayName(Ljava/lang/String;)V

    .line 39
    const-string v4, "durationTime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setDurationTime(I)V

    .line 40
    const-string v4, "completeSize"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setCompleteSize(I)V

    .line 41
    const-string v4, "filePath"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setFilePath(Ljava/lang/String;)V

    .line 42
    const-string v4, "mimeType"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setMimeType(Ljava/lang/String;)V

    .line 43
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setName(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadCount(I)V

    .line 46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final a(II)V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fiio/music/b/e;->a:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    const-string v1, "UPDATE downLoadInfo SET completeSize=? WHERE _id=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    return-void
.end method
