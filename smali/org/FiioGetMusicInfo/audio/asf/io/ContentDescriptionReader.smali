.class public Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;
.super Ljava/lang/Object;
.source "ContentDescriptionReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

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

.method private getStringSizes(Ljava/io/InputStream;)[I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 75
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 78
    return-object v1

    .line 76
    :cond_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 91
    invoke-direct {p0, p2}, Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/InputStream;)[I

    move-result-object v3

    .line 96
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    .line 97
    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_5

    .line 106
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    invoke-direct {v0, p3, p4, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 108
    aget v2, v3, v1

    if-lez v2, :cond_0

    .line 109
    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    .line 111
    :cond_0
    aget v1, v3, v6

    if-lez v1, :cond_1

    .line 112
    aget-object v1, v4, v6

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    .line 114
    :cond_1
    aget v1, v3, v7

    if-lez v1, :cond_2

    .line 115
    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setCopyright(Ljava/lang/String;)V

    .line 117
    :cond_2
    aget v1, v3, v8

    if-lez v1, :cond_3

    .line 118
    aget-object v1, v4, v8

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    .line 120
    :cond_3
    aget v1, v3, v9

    if-lez v1, :cond_4

    .line 121
    aget-object v1, v4, v9

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    .line 123
    :cond_4
    return-object v0

    .line 98
    :cond_5
    aget v5, v3, v0

    if-lez v5, :cond_6

    .line 100
    aget v5, v3, v0

    invoke-static {p2, v5}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    .line 99
    aput-object v5, v4, v0

    .line 97
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
