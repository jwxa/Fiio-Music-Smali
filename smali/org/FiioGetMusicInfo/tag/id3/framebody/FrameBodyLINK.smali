.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyLINK.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 99
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "URL"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "ID"

    invoke-virtual {p0, v0, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getAdditionalData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "ID"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public getFrameIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFrameIdentifier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "LINK"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;

    const-string v2, "Description"

    const/4 v3, 0x4

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;

    const-string v2, "URL"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyLINK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;

    const-string v2, "ID"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
