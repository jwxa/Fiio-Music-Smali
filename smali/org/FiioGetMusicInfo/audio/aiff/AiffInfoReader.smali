.class public Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;
.super Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffChunkReader;
.source "AiffInfoReader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$aiff$chunk$ChunkType:[I

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$aiff$chunk$ChunkType()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$aiff$chunk$ChunkType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->values()[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ANNOTATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->APPLICATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->AUTHOR:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMENTS:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMON:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COPYRIGHT:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->FORMAT_VERSION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->NAME:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->SOUND:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->TAG:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$aiff$chunk$ChunkType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "org.FiioGetMusicInfo.audio.aiff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffChunkReader;-><init>()V

    return-void
.end method

.method private calculateBitRate(Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    sget v2, Lorg/FiioGetMusicInfo/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getPreciseTrackLength()D

    move-result-wide v2

    sget v4, Lorg/FiioGetMusicInfo/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 63
    :cond_0
    return-void
.end method

.method private createChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)Lorg/FiioGetMusicInfo/audio/iff/Chunk;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$aiff$chunk$ChunkType()[I

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 127
    :pswitch_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 131
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommonChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 135
    :pswitch_3
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 139
    :pswitch_4
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/NameChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/NameChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 143
    :pswitch_5
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AuthorChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AuthorChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 147
    :pswitch_6
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CopyrightChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CopyrightChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 151
    :pswitch_7
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AnnotationChunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AnnotationChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    .line 156
    :pswitch_8
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioDataLength(J)V

    .line 157
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 73
    new-instance v1, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 74
    invoke-virtual {v1, p1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->readHeader(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return v0

    .line 79
    :cond_0
    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reading Chunk:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":starting at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":sizeIncHeader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1, v1, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->createChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)Lorg/FiioGetMusicInfo/audio/iff/Chunk;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChunkReadFail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    if-gez v2, :cond_2

    .line 95
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "\u8fd9\u4e2aaiff\u7684chunk\u8fc7\u5927 \u9ed8\u8ba4\u4e3asnnd \u7ed3\u675f\u626b\u63cf"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 101
    :cond_3
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 6

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 31
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 32
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-string v2, "2147483648"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 34
    :cond_0
    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reading AIFF file size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;-><init>()V

    .line 36
    new-instance v3, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;

    invoke-direct {v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;-><init>()V

    .line 37
    invoke-virtual {v3, p1, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;->readHeader(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)J

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-ltz v3, :cond_2

    .line 46
    :goto_0
    invoke-direct {p0, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->calculateBitRate(Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V

    .line 47
    return-object v2

    .line 40
    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "UnableToReadProcessChunk"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method
