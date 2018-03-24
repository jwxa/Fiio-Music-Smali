.class Lorg/FiioGetMusicInfo/audio/asf/io/e;
.super Ljava/lang/Object;
.source "EncryptionChunkReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/e;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/e;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;-><init>(Ljava/math/BigInteger;)V

    .line 88
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 90
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 91
    invoke-virtual {p2, v2, v8, v0}, Ljava/io/InputStream;->read([BII)I

    .line 92
    aput-byte v8, v2, v0

    .line 95
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 98
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    .line 99
    invoke-virtual {p2, v3, v8, v0}, Ljava/io/InputStream;->read([BII)I

    .line 100
    aput-byte v8, v3, v0

    .line 103
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 106
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 107
    invoke-virtual {p2, v4, v8, v0}, Ljava/io/InputStream;->read([BII)I

    .line 108
    aput-byte v8, v4, v0

    .line 111
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 114
    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [B

    .line 115
    invoke-virtual {p2, v5, v8, v0}, Ljava/io/InputStream;->read([BII)I

    .line 116
    aput-byte v8, v5, v0

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->setSecretData(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->setProtectionType(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->setKeyID(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->setLicenseURL(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->setPosition(J)V

    .line 125
    return-object v1
.end method
