.class public Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;
.super Ljava/lang/Object;
.source "ChunkHeader.java"


# static fields
.field public static final CHUNK_HEADER_SIZE:I = 0x8


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private chunkId:Ljava/lang/String;

.field private size:J

.field private startLocationInFile:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    .line 30
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    return-wide v0
.end method

.method public getStartLocationInFile()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->startLocationInFile:J

    return-wide v0
.end method

.method public readHeader(Ljava/io/RandomAccessFile;)Z
    .locals 4

    .prologue
    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->startLocationInFile:J

    .line 40
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 41
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    .line 45
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 46
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-string v2, "2147483648"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    .line 105
    return-void
.end method

.method public writeHeader()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 58
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->size:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    return-object v0
.end method
