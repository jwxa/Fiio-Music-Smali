.class public Lorg/FiioGetMusicInfo/audio/ape/APETagContext;
.super Ljava/lang/Object;
.source "APETagContext.java"


# instance fields
.field public ByteIndex:I

.field public itemFlag:I

.field public itemValueLength:I

.field public tagFlag:I

.field public tagItemNum:I

.field public tagSize:I

.field public tagVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagVersion:I

    .line 39
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagSize:I

    .line 40
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagItemNum:I

    .line 41
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagFlag:I

    .line 43
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->itemValueLength:I

    .line 44
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->itemFlag:I

    .line 45
    return-void
.end method


# virtual methods
.method public byteArrayToInt([B)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 20
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 19
    or-int/2addr v0, v1

    .line 21
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 19
    or-int/2addr v0, v1

    .line 22
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 19
    or-int/2addr v0, v1

    .line 23
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    .line 24
    return v0
.end method

.method public byteArrayToShort([B)S
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 33
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->ByteIndex:I

    .line 34
    return v0
.end method
