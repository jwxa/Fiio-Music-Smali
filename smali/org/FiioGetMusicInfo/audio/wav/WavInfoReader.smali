.class public Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;
.super Ljava/lang/Object;
.source "WavInfoReader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dateNotRead:Z


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->values()[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->DATA:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FACT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FORMAT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ID3:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->INFO:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->LIST:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "org.FiioGetMusicInfo.audio.wav"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->dateNotRead:Z

    .line 49
    return-void
.end method

.method private calculateTrackLength(Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getNoOfSamples()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getNoOfSamples()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 95
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getByteRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Wav Data Header Missing  \u5475"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->dateNotRead:Z

    .line 55
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/wav/WavRIFFHeader;->isValidHeader(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->dateNotRead:Z

    if-nez v1, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->calculateTrackLength(Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V

    .line 72
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Wav RIFF Header not valid"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 109
    new-instance v1, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 110
    invoke-virtual {v1, p1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->readHeader(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_2

    .line 121
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 158
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 166
    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p1, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 126
    new-instance v3, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;

    invoke-direct {v3, v2, v1, p2}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V

    .line 127
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    .line 138
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 140
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 141
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->dateNotRead:Z

    goto :goto_1

    .line 147
    :pswitch_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p1, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 148
    new-instance v3, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;

    invoke-direct {v3, v2, v1, p2}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V

    .line 149
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
