.class public Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "WavFactChunk.java"


# instance fields
.field private info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

.field private isValid:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;->isValid:Z

    .line 44
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    .line 45
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const-string v0, "Fact Chunk:\n"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Is valid?: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFactChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method
