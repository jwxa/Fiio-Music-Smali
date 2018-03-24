.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "CommonChunk.java"


# instance fields
.field private aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 30
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    .line 31
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v3

    .line 39
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v4, v0

    .line 40
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v6

    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->read80BitDouble(Ljava/nio/ByteBuffer;)D

    move-result-wide v8

    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->getFileType()Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    move-result-object v0

    sget-object v7, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    if-ne v0, v7, :cond_6

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->SOWT:Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    sget-object v10, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader$Endian;->LITTLE_ENDIAN:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader$Endian;

    invoke-virtual {v0, v10}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setEndian(Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader$Endian;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v7, :cond_3

    .line 64
    invoke-static {v7}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->getByCode(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;

    move-result-object v10

    .line 65
    if-eqz v10, :cond_4

    .line 67
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v11, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->isLossless()Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    .line 70
    sget-object v11, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;

    if-ne v10, v11, :cond_2

    .line 71
    iget-object v10, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setVariableBitRate(Z)V

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0, v7}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioEncoding(Ljava/lang/String;)V

    .line 99
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setBitsPerSample(I)V

    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    double-to-int v1, v8

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setSamplingRate(I)V

    .line 101
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setChannelNumber(I)V

    .line 102
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    long-to-double v6, v4

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setPreciseLength(D)V

    .line 104
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    move v0, v2

    .line 105
    goto :goto_0

    .line 77
    :cond_4
    iget-object v10, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    goto :goto_1

    .line 86
    :cond_5
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioEncoding(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    .line 94
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    sget-object v7, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioEncoding(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setVariableBitRate(Z)V

    goto :goto_2
.end method
