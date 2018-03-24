.class public final Lcom/fiio/music/util/g;
.super Ljava/lang/Object;
.source "ClearCacheUtils.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 9

    .prologue
    .line 117
    const-wide/16 v2, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 120
    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    :try_start_1
    array-length v3, v4

    if-lt v2, v3, :cond_0

    .line 131
    :goto_1
    return-wide v0

    .line 122
    :cond_0
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    aget-object v3, v4, v2

    invoke-static {v3}, Lcom/fiio/music/util/g;->a(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 120
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_2

    .line 129
    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    const-string v0, "zxy----"

    const-string v1, "cleanInternalCache"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/g;->b(Ljava/io/File;)V

    .line 23
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "zxy----"

    const-string v1, "cleanExternalCache +"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "mounted"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/g;->b(Ljava/io/File;)V

    .line 70
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 106
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    aget-object v3, v1, v0

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
