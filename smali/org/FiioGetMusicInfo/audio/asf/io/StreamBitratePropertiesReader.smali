.class public Lorg/FiioGetMusicInfo/audio/asf/io/StreamBitratePropertiesReader;
.super Ljava/lang/Object;
.source "StreamBitratePropertiesReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/StreamBitratePropertiesReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 9

    .prologue
    .line 68
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 69
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;-><init>(Ljava/math/BigInteger;)V

    .line 75
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v2, v0

    .line 76
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    .line 82
    invoke-virtual {v1, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->setPosition(J)V

    .line 84
    return-object v1

    .line 77
    :cond_0
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v4

    .line 78
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 79
    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4, v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->addBitrateRecord(IJ)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
