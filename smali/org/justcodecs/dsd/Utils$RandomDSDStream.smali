.class public Lorg/justcodecs/dsd/Utils$RandomDSDStream;
.super Ljava/io/RandomAccessFile;
.source "Utils.java"

# interfaces
.implements Lorg/justcodecs/dsd/DSDStream;


# instance fields
.field protected buf:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    .line 50
    return-void
.end method


# virtual methods
.method public canSeek()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public readInt(Z)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readInt()I

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v3, v1}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readFully([BII)V

    .line 72
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 73
    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 72
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public readIntUnsigned(Z)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readFully([BII)V

    .line 79
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 85
    :goto_0
    return-wide v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v6

    goto :goto_0
.end method

.method public readLong(Z)J
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readLong()J

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    invoke-virtual {p0, v0, v5, v6}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readFully([BII)V

    .line 62
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 63
    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 62
    add-long/2addr v0, v2

    .line 63
    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 62
    add-long/2addr v0, v2

    .line 63
    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 62
    add-long/2addr v0, v2

    .line 64
    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    .line 62
    add-long/2addr v0, v2

    .line 64
    iget-object v2, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 62
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public readShort(Z)S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readShort()S

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->readFully([BII)V

    .line 93
    iget-object v0, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/justcodecs/dsd/Utils$RandomDSDStream;->buf:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method
