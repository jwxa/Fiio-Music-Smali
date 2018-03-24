.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyDeprecated.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# instance fields
.field private originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    if-nez v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    .line 69
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getBriefDescription()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalFrameBody()Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->originalFrameBody:Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    move-result v0

    return v0
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
