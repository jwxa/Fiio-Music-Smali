.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/SoundChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "SoundChunk.java"


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 23
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
