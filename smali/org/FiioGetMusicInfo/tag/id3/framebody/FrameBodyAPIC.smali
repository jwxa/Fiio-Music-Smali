.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyAPIC.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 103
    const-string v0, "TextEncoding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;BLjava/lang/String;[B)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 136
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setMimeType(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setPictureType(B)V

    .line 139
    invoke-virtual {p0, p4}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setDescription(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p5}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setImageData([B)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 117
    const-string v0, "TextEncoding"

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getTextEncoding()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v1, "MIMEType"

    const-string v0, "ImageType"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v0, "PictureType"

    const-string v1, "PictureType"

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v0, "Description"

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "PictureData"

    const-string v1, "PictureData"

    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "APIC"

    return-object v0
.end method

.method public getImageData()[B
    .locals 1

    .prologue
    .line 235
    const-string v0, "PictureData"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v2, Ljava/lang/String;

    const-string v0, "PictureData"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    const-string v1, "PictureData"

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v2

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "MIMEType"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    .prologue
    .line 253
    const-string v0, "PictureType"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    const-string v0, "long"

    const-string v1, "mp3\u4fe1\u606f\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa \u672a\u77e5\u539f\u56e0 in FrameBodyAPIC.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isImageUrl()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setImageData([B)V
    .locals 1

    .prologue
    .line 225
    const-string v0, "PictureData"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    const-string v0, "MIMEType"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public setPictureType(B)V
    .locals 2

    .prologue
    .line 245
    const-string v0, "PictureType"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;

    const-string v2, "MIMEType"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "PictureType"

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "PictureData"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setTextEncoding(B)V

    .line 275
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setDescription(Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 288
    return-void

    .line 282
    :cond_1
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setTextEncoding(B)V

    goto :goto_0
.end method
