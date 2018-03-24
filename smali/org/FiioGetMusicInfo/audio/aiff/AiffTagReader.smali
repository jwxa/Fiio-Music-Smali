.class public Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;
.super Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffChunkReader;
.source "AiffTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "org.FiioGetMusicInfo.audio.aiff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffChunkReader;-><init>()V

    return-void
.end method

.method private readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    new-instance v2, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 75
    invoke-virtual {v2, p1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->readHeader(Ljava/io/RandomAccessFile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 81
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->TAG:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    if-ne v3, v6, :cond_1

    .line 84
    invoke-virtual {p0, p1, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    new-instance v3, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ID3Chunk;

    invoke-direct {v3, v2, v0, p2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ID3Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;)V

    .line 86
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->readChunk()Z

    .line 87
    invoke-virtual {p2, v1}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->setExistingId3Tag(Z)V

    .line 88
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getID3Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setStartLocationInFile(J)V

    .line 89
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getID3Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setEndLocationInFile(J)V

    .line 100
    :goto_1
    invoke-static {p1, v2}, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    move v0, v1

    .line 101
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    long-to-int v3, v4

    if-gez v3, :cond_2

    .line 94
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "\u8fd9\u4e2aaiff\u7684chunk\u8fc7\u5927 \u9ed8\u8ba4\u4e3asnnd \u7ed3\u675f\u626b\u63cf"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_1
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;
    .locals 6

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 41
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-string v2, "2147483648"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 44
    :cond_0
    new-instance v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;-><init>()V

    .line 45
    new-instance v3, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;

    invoke-direct {v3}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;-><init>()V

    .line 47
    new-instance v4, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;

    invoke-direct {v4}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;-><init>()V

    .line 48
    invoke-virtual {v4, p1, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;->readHeader(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)J

    .line 49
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-ltz v2, :cond_3

    .line 58
    :goto_0
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getID3Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->setID3Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 63
    :cond_2
    return-object v3

    .line 51
    :cond_3
    invoke-direct {p0, p1, v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->readChunk(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "UnableToReadProcessChunk"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method
