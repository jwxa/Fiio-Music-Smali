.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyGEOB.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 64
    const-string v0, "TextEncoding"

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v0, "MIMEType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v0, "Filename"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v0, "Description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "Data"

    new-array v1, v2, [B

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 87
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "MIMEType"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "Filename"

    invoke-virtual {p0, v0, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "Description"

    invoke-virtual {p0, v0, p4}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "Data"

    invoke-virtual {p0, v0, p5}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "GEOB"

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;

    const-string v2, "MIMEType"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Filename"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "Data"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    const-string v0, "Filename"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setTextEncoding(B)V

    .line 140
    :cond_0
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyGEOB;->setTextEncoding(B)V

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 145
    return-void
.end method
