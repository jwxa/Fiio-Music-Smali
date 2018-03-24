.class public Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;
.super Ljava/lang/Object;
.source "ExtDouble.java"


# instance fields
.field _rawData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    .line 34
    return-void
.end method


# virtual methods
.method public toDouble()D
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v1, 0x0

    .line 46
    const-wide/16 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte v0, v0, v1

    shr-int/lit8 v4, v0, 0x7

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    const/4 v5, 0x1

    aget-byte v1, v1, v5

    or-int/2addr v0, v1

    .line 57
    and-int/lit16 v0, v0, 0x7fff

    .line 58
    add-int/lit16 v5, v0, -0x403d

    .line 65
    const/16 v1, 0x37

    .line 66
    const/4 v0, 0x2

    :goto_0
    if-lt v0, v10, :cond_1

    .line 71
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte v0, v0, v10

    ushr-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 74
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 75
    long-to-double v0, v0

    mul-double/2addr v0, v2

    .line 76
    if-eqz v4, :cond_0

    .line 78
    neg-double v0, v0

    .line 80
    :cond_0
    return-wide v0

    .line 68
    :cond_1
    iget-object v6, p0, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->_rawData:[B

    aget-byte v6, v6, v0

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    .line 69
    add-int/lit8 v1, v1, -0x8

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
