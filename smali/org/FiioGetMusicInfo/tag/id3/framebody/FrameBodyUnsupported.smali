.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyUnsupported.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v22FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 75
    const-string v0, "Data"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 86
    const-string v0, "Data"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-nez v0, :cond_0

    move v0, v1

    .line 136
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    .line 136
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

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

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "Data"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
