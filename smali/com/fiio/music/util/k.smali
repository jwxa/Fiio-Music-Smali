.class public final Lcom/fiio/music/util/k;
.super Ljava/lang/Object;
.source "DeleteFileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 24
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 19
    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 19
    :cond_3
    aget-object v3, v1, v0

    .line 20
    invoke-static {v3}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 42
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    .line 37
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 38
    invoke-static {v3}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
