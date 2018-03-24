.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;
.source "AbstractID3v2Frame.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# static fields
.field protected static final TYPE_FRAME:Ljava/lang/String; = "frame"

.field protected static final TYPE_FRAME_SIZE:Ljava/lang/String; = "frameSize"

.field protected static final UNSUPPORTED_ID:Ljava/lang/String; = "Unsupported"


# instance fields
.field encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

.field protected frameSize:I

.field protected identifier:Ljava/lang/String;

.field private loggingFilename:Ljava/lang/String;

.field statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 91
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 91
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 119
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating empty frame of type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.FiioGetMusicInfo.tag.id3.framebody.FrameBody"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    :goto_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 147
    instance-of v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 156
    :cond_0
    :goto_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created empty frame of type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 157
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    .line 137
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InstantiationException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catch_2
    move-exception v0

    .line 143
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalAccessException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_1
    instance-of v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 91
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 91
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 108
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 109
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 110
    return-void
.end method


# virtual methods
.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 601
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 607
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    .line 608
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_1

    .line 610
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 614
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 638
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    return-object v0
.end method

.method protected abstract getFrameHeaderSize()I
.end method

.method protected abstract getFrameIdSize()I
.end method

.method protected abstract getFrameSizeSize()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method protected getLoggingFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .prologue
    .line 456
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 457
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPadding([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    .line 238
    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    .line 239
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    .line 240
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    .line 245
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 5

    .prologue
    .line 264
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating framebody:start"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 269
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.FiioGetMusicInfo.tag.id3.framebody.FrameBody"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 270
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "java.nio.ByteBuffer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 271
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6

    .line 338
    :goto_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Created framebody:end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 340
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Identifier not recognised:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using FrameBodyUnsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 281
    :try_start_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, p2, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidTagException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    throw v0

    .line 289
    :catch_2
    move-exception v0

    .line 291
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :catch_3
    move-exception v0

    .line 298
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":An error occurred within abstractID3v2FrameBody for identifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    throw v0

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    if-eqz v1, :cond_3

    .line 313
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    throw v0

    .line 317
    :cond_3
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :catch_4
    move-exception v0

    .line 323
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":No such method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :catch_5
    move-exception v0

    .line 329
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Instantiation exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :catch_6
    move-exception v0

    .line 335
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Illegal access exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readBody(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 5

    .prologue
    .line 401
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.FiioGetMusicInfo.tag.id3.framebody.FrameBody"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 402
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 403
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 449
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frame Body created"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 451
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Identifier not recognised:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unable to create framebody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 410
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameBody"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :catch_1
    move-exception v0

    .line 415
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameBody"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a constructor that takes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :catch_2
    move-exception v0

    .line 420
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    const-string v2, "An error occurred within abstractID3v2FrameBody"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 421
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invocation target exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 426
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 432
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :catch_3
    move-exception v0

    .line 439
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Instantiation exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :catch_4
    move-exception v0

    .line 445
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal access exception :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
    .locals 2

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;

    invoke-direct {v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V

    .line 225
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v0

    new-array v0, v0, [B

    .line 355
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getFrameHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 357
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":No space to find another frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 358
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":No space to find another frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getFrameIdSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->isPadding([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    new-instance v0, Lorg/FiioGetMusicInfo/tag/PaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":only padding found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/PaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 370
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Identifier is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented please use the generic tag methods for setting content"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setLoggingFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->loggingFilename:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public abstract write(Ljava/io/ByteArrayOutputStream;)V
.end method
