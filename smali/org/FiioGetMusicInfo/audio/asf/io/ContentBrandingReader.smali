.class public Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;
.super Ljava/lang/Object;
.source "ContentBrandingReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->$assertionsDisabled:Z

    .line 23
    new-array v0, v1, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v1, v0, v2

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 51
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 53
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 54
    sget-boolean v1, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2, v3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    .line 55
    :cond_2
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 56
    sget-boolean v1, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    cmp-long v1, v2, v6

    if-gtz v1, :cond_3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4, v5}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    .line 57
    :cond_3
    sget-boolean v1, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_4
    invoke-static {p2, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v1

    .line 59
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 60
    new-instance v6, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 62
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 63
    new-instance v7, Ljava/lang/String;

    .line 64
    invoke-static {p2, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v4

    .line 63
    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 65
    new-instance v4, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;

    invoke-direct {v4, p3, p4, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    .line 67
    invoke-virtual {v4, v2, v3, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->setImage(J[B)V

    .line 68
    invoke-virtual {v4, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->setCopyRightURL(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->setBannerImageURL(Ljava/lang/String;)V

    .line 70
    return-object v4
.end method
