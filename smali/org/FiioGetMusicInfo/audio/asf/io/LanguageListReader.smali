.class public Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;
.super Ljava/lang/Object;
.source "LanguageListReader.java"

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

    .line 17
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;->$assertionsDisabled:Z

    .line 22
    new-array v0, v1, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v1, v0, v2

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void

    :cond_0
    move v0, v2

    .line 17
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 7

    .prologue
    .line 43
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v1

    .line 48
    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;

    invoke-direct {v2, p3, p4, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;-><init>(JLjava/math/BigInteger;)V

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 60
    return-object v2

    .line 50
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 52
    invoke-static {p2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    .line 55
    sget-boolean v5, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_2

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v3, 0x2

    if-eq v5, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_2
    invoke-virtual {v2, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->addLanguage(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
