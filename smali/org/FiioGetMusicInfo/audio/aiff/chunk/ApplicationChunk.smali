.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "ApplicationChunk.java"


# static fields
.field private static final SIGNATURE_PDOS:Ljava/lang/String; = "pdos"

.field private static final SIGNATURE_STOC:Ljava/lang/String; = "stoc"


# instance fields
.field private aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 34
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    .line 35
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const/4 v0, 0x0

    .line 55
    const-string v2, "stoc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pdos"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->addApplicationIdentifier(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
