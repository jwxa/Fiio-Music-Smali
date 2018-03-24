.class public Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "WavId3Chunk.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private wavTag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "org.FiioGetMusicInfo.audio.wav.chunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 35
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->wavTag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    .line 36
    return-void
.end method

.method private isId3v2Tag(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 97
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public readChunk()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->isId3v2Tag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->logger:Ljava/util/logging/Logger;

    const-string v2, "Invalid ID3 header for ID3 chunk"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 49
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 64
    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>()V

    .line 53
    sget-object v3, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v4, "Reading ID3V2.2 tag"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 67
    :goto_1
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setStartLocationInFile(J)V

    .line 68
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setEndLocationInFile(J)V

    .line 70
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->wavTag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-virtual {v3, v2}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setExistingId3Tag(Z)V

    .line 71
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->wavTag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setID3Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 72
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    :try_start_0
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavId3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 82
    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>()V

    .line 57
    sget-object v3, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v4, "Reading ID3V2.3 tag"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>()V

    .line 61
    sget-object v3, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v4, "Reading ID3V2.4 tag"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    sget-object v2, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading ID3 tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    .line 80
    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
