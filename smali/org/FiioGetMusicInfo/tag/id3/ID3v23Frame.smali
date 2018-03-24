.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
.source "ID3v23Frame.java"


# static fields
.field protected static final FRAME_COMPRESSION_UNCOMPRESSED_SIZE:I = 0x4

.field protected static final FRAME_ENCRYPTION_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_FLAGS_SIZE:I = 0x2

.field protected static final FRAME_GROUPING_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_HEADER_SIZE:I = 0xa

.field protected static final FRAME_ID_SIZE:I = 0x4

.field protected static final FRAME_SIZE_SIZE:I = 0x4

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# instance fields
.field private encryptionMethod:I

.field private groupIdentifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "[A-Z][0-9A-Z]{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/e;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/e;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 104
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/d;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 293
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 280
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->read(Ljava/nio/ByteBuffer;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 128
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating frame from a frame of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 129
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_1

    .line 135
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/e;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-direct {v1, p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/e;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;Lorg/FiioGetMusicInfo/tag/id3/g;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 136
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/d;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 139
    :cond_1
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_9

    .line 142
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_2

    .line 144
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 146
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 147
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    if-eqz v0, :cond_5

    .line 154
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;->getOriginalFrameBody()Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 157
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 158
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v1

    invoke-static {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 159
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 160
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEPRECATED:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 268
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Frame is unknown version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_4
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 166
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 167
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v1

    invoke-static {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 169
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 170
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEPRECATED:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v24FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    const-string v1, "isID3v24FrameIdentifier"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->convertFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 181
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V4:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 183
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 184
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v1

    invoke-static {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    goto/16 :goto_0

    .line 190
    :cond_6
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->forceFrameID24To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 193
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V4:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readBody(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 195
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 196
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v1

    invoke-static {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    goto/16 :goto_0

    .line 204
    :cond_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 207
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 208
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 210
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V4:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New Id Unsupported is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_8
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unable to create Frame Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unable to create Frame Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_9
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 226
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 229
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 231
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_0

    .line 235
    :cond_a
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v22FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 241
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V22Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readBody(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 243
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_0

    .line 249
    :cond_b
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 250
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 251
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 252
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deprecated:V22:orig id id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_c
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 261
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 262
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 263
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 116
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/e;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/e;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 117
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/d;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 118
    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    .prologue
    .line 817
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frameSize"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 819
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    .line 820
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/a;->b()V

    .line 821
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->createStructure()V

    .line 822
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    if-ne p0, p1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-nez v2, :cond_2

    move v0, v1

    .line 322
    goto :goto_0

    .line 324
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 328
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 327
    goto :goto_0
.end method

.method public getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encryptionMethod:I

    return v0
.end method

.method protected getFrameHeaderSize()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0xa

    return v0
.end method

.method protected getFrameIdSize()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x4

    return v0
.end method

.method protected getFrameSizeSize()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x4

    return v0
.end method

.method public getGroupIdentifier()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->groupIdentifier:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .prologue
    .line 838
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->isBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 830
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->isCommon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Invalid identifier:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getFrameIdSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":is not a valid ID3v2.30 frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    .line 352
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    if-gez v0, :cond_1

    .line 354
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Invalid Frame Size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 355
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    if-nez v0, :cond_2

    .line 359
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Empty Frame Size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 363
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 364
    new-instance v0, Lorg/FiioGetMusicInfo/tag/EmptyFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is empty frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 368
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Invalid Frame size of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " larger than size of"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " before mp3 audio:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is invalid frame:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " larger than size of"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " before mp3 audio:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_3
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/e;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/e;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 374
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/d;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 378
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    if-nez v0, :cond_f

    .line 385
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v1, v2

    .line 395
    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Identifier was:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reading using:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "with frame size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 400
    const/4 v4, 0x0

    .line 401
    const/4 v3, -0x1

    .line 403
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 407
    const/4 v3, 0x4

    .line 408
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":Decompressed frame size is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v4, v3

    move v3, v0

    .line 411
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encryptionMethod:I

    .line 418
    :cond_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    add-int/lit8 v4, v4, 0x1

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->groupIdentifier:I

    .line 425
    :cond_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    sget-object v5, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":InvalidEncodingFlags:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->a()B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 431
    :cond_7
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 433
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    mul-int/lit8 v0, v0, 0x64

    if-le v3, v0, :cond_9

    .line 435
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame, frame size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when uncompressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_8
    const-string v0, "Unsupported"

    move-object v1, v0

    goto/16 :goto_0

    .line 440
    :cond_9
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    sub-int v4, v0, v4

    .line 442
    if-gtz v4, :cond_a

    .line 444
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame, realframeSize is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_a
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 453
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1, v3, v4}, Lorg/FiioGetMusicInfo/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 454
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 456
    invoke-virtual {p0, v1, v5, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 477
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;

    if-nez v0, :cond_b

    .line 479
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Converted frameBody with:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to deprecated frameBody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 480
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 488
    return-void

    .line 460
    :cond_c
    :try_start_1
    invoke-virtual {p0, v1, v5, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 484
    :catchall_0
    move-exception v0

    .line 486
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 487
    throw v0

    .line 463
    :cond_d
    :try_start_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 465
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameSize:I

    invoke-virtual {p0, v2, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto :goto_1

    .line 470
    :cond_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 472
    invoke-virtual {p0, v1, v0, v4}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_f
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 3

    .prologue
    .line 848
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 853
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 856
    :cond_0
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    .prologue
    .line 496
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing frame to buffer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 499
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 502
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 505
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 507
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    .line 509
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 511
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    .line 512
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Frame Size Is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 517
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->e()V

    .line 523
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->c()V

    .line 524
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 531
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encryptionMethod:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/d;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->groupIdentifier:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 547
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
