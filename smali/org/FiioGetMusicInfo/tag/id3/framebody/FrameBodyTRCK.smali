.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyTRCK.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 55
    const-string v0, "TextEncoding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "Text"

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 79
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v0, "Text"

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1, p2, p3}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 72
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "Text"

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "TRCK"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNo()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 114
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    .line 115
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNoAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getCountAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 139
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTrackTotalAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getTotalAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    const-string v0, "Text"

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setTrackNo(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/Integer;)V

    .line 130
    return-void
.end method

.method public setTrackNo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setTrackTotal(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 150
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/Integer;)V

    .line 151
    return-void
.end method

.method public setTrackTotal(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
