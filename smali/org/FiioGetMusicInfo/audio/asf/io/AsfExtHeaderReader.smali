.class public Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;
.super Lorg/FiioGetMusicInfo/audio/asf/io/a;
.source "AsfExtHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/audio/asf/io/a",
        "<",
        "Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->$assertionsDisabled:Z

    .line 23
    new-array v0, v1, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v1, v0, v2

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void

    :cond_0
    move v0, v2

    .line 18
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/asf/io/a;-><init>(Ljava/util/List;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;
    .locals 5

    .prologue
    .line 57
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 59
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 60
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 61
    sget-boolean v2, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    sget-boolean v2, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x2e

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    invoke-direct {v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;-><init>(JLjava/math/BigInteger;)V

    return-object v0
.end method

.method protected bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;

    move-result-object v0

    return-object v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public bridge synthetic read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    return-object v0
.end method
