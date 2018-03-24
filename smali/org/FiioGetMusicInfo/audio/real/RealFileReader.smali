.class public Lorg/FiioGetMusicInfo/audio/real/RealFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "RealFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private findContChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    .line 58
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    .line 59
    :cond_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->isCONT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-object v0
.end method

.method private findPropChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    .line 51
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    move-result-object v0

    .line 52
    return-object v0
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 24
    new-instance v1, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/audio/real/RealFileReader;->findPropChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 30
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 31
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 32
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 33
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 34
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 35
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v6

    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    .line 36
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 37
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 38
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 39
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 40
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    .line 41
    long-to-int v0, v4

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 42
    int-to-double v6, v6

    invoke-virtual {v1, v6, v7}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 43
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 45
    :cond_0
    return-object v1

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/audio/real/RealFileReader;->findContChunk(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/real/RealChunk;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v2

    .line 69
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    .line 73
    new-instance v4, Lorg/FiioGetMusicInfo/audio/real/RealTag;

    invoke-direct {v4}, Lorg/FiioGetMusicInfo/audio/real/RealTag;-><init>()V

    .line 78
    :try_start_0
    sget-object v5, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    invoke-virtual {v4, v5, v2}, Lorg/FiioGetMusicInfo/audio/real/RealTag;->addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V

    .line 79
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v4, v2, v0}, Lorg/FiioGetMusicInfo/audio/real/RealTag;->addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-object v4

    :cond_0
    move-object v2, v3

    .line 78
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 79
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
