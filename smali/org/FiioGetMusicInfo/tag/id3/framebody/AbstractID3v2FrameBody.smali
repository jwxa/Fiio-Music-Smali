.class public abstract Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
.source "AbstractID3v2FrameBody.java"


# static fields
.field protected static final TYPE_BODY:Ljava/lang/String; = "body"


# instance fields
.field private size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;-><init>()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;-><init>()V

    .line 80
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->setSize(I)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 67
    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 235
    return-void

    .line 230
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 232
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->createStructure()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 133
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    move-result v2

    .line 152
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Reading body for"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 155
    new-array v3, v2, [B

    .line 156
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 161
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 164
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 167
    sget-object v5, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "offset:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 171
    if-le v1, v2, :cond_1

    .line 173
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid Size for FrameBody"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    const-string v1, "Invalid size for Frame Body"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    :try_start_0
    invoke-virtual {v0, v3, v1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->readByteArray([BI)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem reading datatype within Frame Body:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 186
    throw v0
.end method

.method public setSize()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 120
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 120
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 122
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 112
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing frame body for"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Est Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->setSize()V

    .line 220
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Written frame body for"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Real Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 222
    return-void

    .line 203
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 205
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
