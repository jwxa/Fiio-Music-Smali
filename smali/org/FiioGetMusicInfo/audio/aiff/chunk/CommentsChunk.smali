.class public Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "CommentsChunk.java"


# static fields
.field private static final COUNT_LENGTH:I = 0x2

.field private static final MARKERID_LENGTH:I = 0x2

.field private static final TIMESTAMP_LENGTH:I = 0x4


# instance fields
.field private aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p2, p1}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 66
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    .line 67
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v2

    move v0, v1

    .line 80
    :goto_0
    if-lt v0, v2, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(I)J

    move-result-wide v4

    .line 83
    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->timestampToDate(J)Ljava/util/Date;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    .line 85
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v6, v1, v4, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 90
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 92
    :cond_1
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/CommentsChunk;->aiffHeader:Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;

    invoke-virtual {v4, v3}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->addComment(Ljava/lang/String;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
