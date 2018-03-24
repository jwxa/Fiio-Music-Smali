.class public Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;
.super Ljava/lang/Object;
.source "FlacInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "org.FiioGetMusicInfo.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(JF)I
    .locals 5

    .prologue
    .line 97
    sget v0, Lorg/FiioGetMusicInfo/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, v0

    div-long v0, p1, v0

    sget v2, Lorg/FiioGetMusicInfo/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public countMetaBlocks(Ljava/io/File;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 110
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v2, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 112
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->findStream()V

    move v1, v0

    .line 117
    :goto_0
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    return v0

    .line 119
    :cond_0
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    .line 120
    sget-object v3, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found block:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;
    .locals 7

    .prologue
    .line 44
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 45
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->findStream()V

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 53
    :goto_0
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 73
    if-nez v0, :cond_3

    .line 75
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Unable to find Flac StreamInfo"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    if-ne v2, v3, :cond_1

    .line 58
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 59
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "FLAC StreamInfo not valid"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    goto :goto_0

    .line 78
    :cond_3
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;-><init>()V

    .line 79
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfSamples()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    .line 80
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setPreciseLength(D)V

    .line 81
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfChannels()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setChannelNumber(I)V

    .line 82
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setSamplingRate(I)V

    .line 83
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBitsPerSample()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setBitsPerSample(I)V

    .line 84
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 85
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setLossless(Z)V

    .line 86
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getMD5Signature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setMd5(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setAudioDataLength(J)V

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 90
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v0

    invoke-direct {p0, v2, v3, v0}, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;->computeBitrate(JF)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->setBitRate(I)V

    .line 92
    return-object v1
.end method
