.class public Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;
.super Ljava/lang/Object;
.source "WavTagReader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType()[I
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

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
    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType:[I

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
    .line 45
    const-string v0, "org.FiioGetMusicInfo.audio.wav"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/wav/WavTag;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getWavOptions()Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;-><init>(Lorg/FiioGetMusicInfo/audio/wav/WavOptions;)V

    .line 57
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/wav/WavRIFFHeader;->isValidHeader(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 72
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setID3Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 76
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    new-instance v1, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setInfoTag(Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;)V

    .line 80
    :cond_2
    return-object v0

    .line 61
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 69
    :cond_4
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Wav RIFF Header not valid"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 115
    new-instance v2, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 116
    invoke-virtual {v2, p1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->readHeader(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    .line 121
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v3, "ID3 "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_2
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_4

    .line 134
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavChunkType()[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :pswitch_0
    long-to-int v0, v4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 160
    :cond_3
    :goto_1
    invoke-static {p1, v2}, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;

    long-to-int v3, v4

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v3, v2, p2}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V

    .line 138
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 140
    goto :goto_0

    .line 145
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;

    long-to-int v3, v4

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v3, v2, p2}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V

    .line 146
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 148
    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
