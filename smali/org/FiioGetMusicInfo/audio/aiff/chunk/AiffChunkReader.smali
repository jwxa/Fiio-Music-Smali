.class public abstract Lorg/FiioGetMusicInfo/audio/aiff/chunk/AiffChunkReader;
.super Ljava/lang/Object;
.source "AiffChunkReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected readChunkDataIntoBuffer(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    return-object v0
.end method
