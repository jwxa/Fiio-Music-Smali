.class public Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;
.super Ljava/lang/Object;
.source "IffHeaderChunk.java"


# static fields
.field public static HEADER_LENGTH:I

.field public static SIGNATURE_LENGTH:I

.field public static SIZE_LENGTH:I

.field public static TYPE_LENGTH:I

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 12
    const-string v0, "org.FiioGetMusicInfo.audio.iff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->logger:Ljava/util/logging/Logger;

    .line 14
    sput v1, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    .line 15
    sput v1, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    .line 16
    sput v1, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    .line 17
    sget v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sget v1, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    add-int/2addr v0, v1

    sget v1, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    add-int/2addr v0, v1

    sput v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 33
    sget-object v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->logger:Ljava/util/logging/Logger;

    const-string v1, "Skipping Byte because on odd boundary"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 37
    :cond_0
    return-void
.end method
