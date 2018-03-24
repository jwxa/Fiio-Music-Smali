.class public Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "WavListChunk.java"


# instance fields
.field private isValid:Z

.field private tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->isValid:Z

    .line 44
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    .line 45
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->INFO:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;-><init>(Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V

    .line 53
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->readChunks(Ljava/nio/ByteBuffer;)Z

    .line 55
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getInfoTag()Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->setStartLocationInFile(J)V

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getInfoTag()Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->setEndLocationInFile(J)V

    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->tag:Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setExistingInfoTag(Z)V

    .line 59
    :cond_0
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-string v0, "RIFF-WAVE Header:\n"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Is valid?: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavListChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
