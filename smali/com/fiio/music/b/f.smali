.class public Lcom/fiio/music/b/f;
.super Ljava/lang/Object;
.source "DownloadApkDao.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/fiio/music/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/fiio/music/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/fiio/music/b/d;

    invoke-direct {v0, p1}, Lcom/fiio/music/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/b/f;->b:Lcom/fiio/music/b/d;

    .line 21
    return-void
.end method

.method private static c(Lcom/fiio/music/network/bean/DownloadInfo;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    const-string v1, "downloadUrl"

    .line 100
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "savePath"

    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "fileName"

    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "versionCode"

    .line 104
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "versionName"

    .line 106
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "downloadState"

    .line 108
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadState()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "totalSize"

    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getTotalSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "finishedSize"

    .line 111
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getFinishedSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "updateLog"

    invoke-virtual {p0}, Lcom/fiio/music/network/bean/DownloadInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/fiio/music/network/bean/DownloadInfo;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 39
    iget-object v0, p0, Lcom/fiio/music/b/f;->b:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    const-string v1, "breakpoinInfo"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    .line 42
    const-string v3, "downloadUrl"

    aput-object v3, v2, v8

    const-string v3, "savePath"

    aput-object v3, v2, v9

    .line 43
    const-string v3, "fileName"

    aput-object v3, v2, v11

    const-string v3, "versionCode"

    aput-object v3, v2, v12

    const/4 v3, 0x4

    .line 44
    const-string v4, "versionName"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 45
    const-string v4, "downloadState"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "totalSize"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 46
    const-string v4, "finishedSize"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "updateLog"

    aput-object v4, v2, v3

    .line 47
    const-string v3, "downloadUrl = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v6, v5

    move-object v7, v5

    .line 41
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 49
    if-eqz v10, :cond_1

    .line 50
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/fiio/music/network/bean/DownloadInfo;

    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 52
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 53
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/network/bean/DownloadInfo;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 58
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v5

    goto :goto_1
.end method

.method public final a(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fiio/music/b/f;->b:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    invoke-static {p1}, Lcom/fiio/music/b/f;->c(Lcom/fiio/music/network/bean/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/fiio/music/b/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v2, "breakpoinInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 71
    return-void
.end method

.method public final b(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 7

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fiio/music/b/f;->b:Lcom/fiio/music/b/d;

    invoke-virtual {v0}, Lcom/fiio/music/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    const-string v1, "breakpoinInfo"

    invoke-static {p1}, Lcom/fiio/music/b/f;->c(Lcom/fiio/music/network/bean/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "downloadUrl=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    return-void
.end method
