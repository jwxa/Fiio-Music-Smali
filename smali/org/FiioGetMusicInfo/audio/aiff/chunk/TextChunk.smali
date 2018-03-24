.class public abstract Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "TextChunk.java"


# instance fields
.field protected final aiffAudioHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 30
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;->aiffAudioHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    .line 31
    return-void
.end method


# virtual methods
.method protected readChunkText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;->chunkData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/TextChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
