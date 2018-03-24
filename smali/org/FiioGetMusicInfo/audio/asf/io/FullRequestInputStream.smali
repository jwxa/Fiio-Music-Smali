.class public Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;
.super Ljava/io/FilterInputStream;
.source "FullRequestInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    :cond_0
    if-lt v0, p3, :cond_1

    .line 51
    return v0

    .line 42
    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 43
    if-ltz v1, :cond_2

    .line 44
    add-int/2addr v0, v1

    .line 46
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 47
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v0, " more bytes expected."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    const/4 v0, 0x0

    move-wide v2, v4

    .line 62
    :goto_0
    cmp-long v1, v2, p1

    if-ltz v1, :cond_1

    .line 75
    :cond_0
    return-wide v2

    .line 63
    :cond_1
    sub-long v6, p1, v2

    invoke-super {p0, v6, v7}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v6

    .line 64
    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 70
    :cond_2
    add-long/2addr v2, v6

    goto :goto_0
.end method
