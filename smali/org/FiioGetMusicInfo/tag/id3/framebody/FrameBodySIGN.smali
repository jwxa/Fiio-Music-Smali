.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodySIGN.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 59
    const-string v0, "GroupSymbol"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "Signature"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getGroupSymbol()B
    .locals 1

    .prologue
    .line 88
    const-string v0, "GroupSymbol"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "GroupSymbol"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "SIGN"

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 122
    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public setGroupSymbol(B)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "GroupSymbol"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setSignature([B)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "Signature"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "GroupSymbol"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySIGN;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "Signature"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method
