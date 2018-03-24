.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/AnnotationChunk;
.super Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;
.source "AnnotationChunk.java"


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;-><init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    .line 26
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AnnotationChunk;->aiffAudioHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/AnnotationChunk;->readChunkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->addAnnotation(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method
