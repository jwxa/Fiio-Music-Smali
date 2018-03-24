.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "FormatVersionChunk.java"


# instance fields
.field private aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 49
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    .line 50
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    .line 63
    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->timestampToDate(J)Ljava/util/Date;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/FormatVersionChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setTimestamp(Ljava/util/Date;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method
