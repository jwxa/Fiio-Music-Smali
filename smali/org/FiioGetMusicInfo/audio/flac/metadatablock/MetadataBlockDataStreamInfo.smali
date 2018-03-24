.class public Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;
.super Ljava/lang/Object;
.source "MetadataBlockDataStreamInfo.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockData;


# static fields
.field public static final STREAM_INFO_DATA_LENGTH:I = 0x22

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private bitsPerSample:I

.field private isValid:Z

.field private maxBlockSize:I

.field private maxFrameSize:I

.field private md5:Ljava/lang/String;

.field private minBlockSize:I

.field private minFrameSize:I

.field private noOfChannels:I

.field private noOfSamples:I

.field private rawdata:Ljava/nio/ByteBuffer;

.field private samplingRate:I

.field private samplingRatePerChannel:I

.field private trackLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "org.FiioGetMusicInfo.audio.flac.MetadataBlockDataStreamInfo"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    .line 69
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read required number of bytes, read:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":required:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    .line 80
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    .line 81
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    .line 82
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readSamplingRate()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    .line 83
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readNoOfChannels()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    .line 84
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readBitsPerSample()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    .line 85
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readTotalNumberOfSamples()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    .line 86
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->md5:Ljava/lang/String;

    .line 87
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    int-to-double v0, v0

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    .line 88
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    .line 90
    return-void
.end method

.method private readBitsPerSample()I
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readMd5()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x22

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 97
    const/16 v0, 0x12

    :goto_0
    if-lt v0, v6, :cond_1

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 100
    const-string v3, "%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readNoOfChannels()I
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readSamplingRate()I
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 195
    return v0
.end method

.method private readThreeByteInteger(BBB)I
    .locals 2

    .prologue
    .line 183
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    return v0
.end method

.method private readTotalNumberOfSamples()I
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    .line 219
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 220
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 221
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 222
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 223
    return v0
.end method


# virtual methods
.method public getBitsPerSample()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FLAC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getMD5Signature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfChannels()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    return v0
.end method

.method public getNoOfSamples()J
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPreciseLength()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    return v0
.end method

.method public getSamplingRatePerChannel()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MinBlockSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MaxBlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MaxFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SampleRateTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SampleRatePerChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Channel number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Bits per sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":TotalNumberOfSamples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
