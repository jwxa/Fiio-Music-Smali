.class Lorg/FiioGetMusicInfo/audio/asf/io/d;
.super Ljava/lang/Object;
.source "EncodingChunkReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/d;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/d;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 7

    .prologue
    .line 69
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 70
    new-instance v3, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;

    invoke-direct {v3, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;-><init>(Ljava/math/BigInteger;)V

    .line 78
    const-wide/16 v0, 0x14

    invoke-virtual {p2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 84
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v4

    .line 85
    const/16 v1, 0x2e

    .line 90
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    int-to-long v0, v1

    sub-long v0, v4, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 96
    invoke-virtual {v3, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->setPosition(J)V

    .line 97
    return-object v3

    .line 91
    :cond_0
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readCharacterSizedString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v3, v5}, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->addString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v1, v5

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
