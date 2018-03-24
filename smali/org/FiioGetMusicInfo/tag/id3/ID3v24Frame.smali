.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
.source "ID3v24Frame.java"


# static fields
.field protected static final FRAME_DATA_LENGTH_SIZE:I = 0x4

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
    .line 47
    const-string v0, "[A-Z][0-9A-Z]{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/g;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 107
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/f;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 341
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 327
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->read(Ljava/nio/ByteBuffer;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 196
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_2

    .line 203
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/e;

    invoke-direct {v1, p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/g;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;Lorg/FiioGetMusicInfo/tag/id3/e;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 204
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/f;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 216
    :goto_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_3

    .line 218
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V

    .line 225
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 226
    return-void

    .line 208
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/g;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 209
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/f;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    goto :goto_0

    .line 220
    :cond_3
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 223
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 119
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/g;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 120
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/f;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 236
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v2, "IND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Cannot create ID3v2.40 frame from Lyrics3 indications field."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    const-string v2, "LYR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    .line 246
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 249
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result v8

    .line 252
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;

    const-string v2, "ENG"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    new-array v6, v1, [B

    invoke-direct/range {v0 .. v6}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;-><init>(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 253
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    const-string v3, "ENG"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    if-eqz v8, :cond_3

    .line 268
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 269
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 306
    :goto_1
    return-void

    .line 256
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    .line 257
    if-nez v8, :cond_1

    .line 263
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->addLyric(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;)V

    goto :goto_0

    .line 273
    :cond_3
    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 274
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 277
    :cond_4
    const-string v2, "INF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    const-string v3, "ENG"

    const-string v4, ""

    invoke-direct {v2, v1, v3, v4, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 281
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 283
    :cond_5
    const-string v2, "AUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 285
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCOM;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 287
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 289
    :cond_6
    const-string v2, "EAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 291
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 293
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 295
    :cond_7
    const-string v2, "EAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 297
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 299
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 301
    :cond_8
    const-string v2, "ETT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 303
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 305
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 307
    :cond_9
    const-string v1, "IMG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 309
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Cannot create ID3v2.40 frame from Lyrics3 image field."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_a
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot caret ID3v2.40 frame from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Lyrics3 field"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 385
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 388
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 391
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 392
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 396
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 397
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z

    move-result v2

    .line 400
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    if-eqz v2, :cond_2

    .line 404
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Frame size is NOT stored as a sync safe integer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v2

    neg-int v2, v2

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_0

    .line 410
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 411
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    .line 425
    iget v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 431
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    invoke-virtual {p1, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 438
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 440
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 441
    invoke-virtual {p0, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 459
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    .line 464
    add-int v3, v0, v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 468
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    invoke-virtual {p1, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 469
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 472
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    invoke-virtual {p0, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    .line 479
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Assuming frame size is NOT stored as a sync safe integer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :cond_5
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    .line 488
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Assuming frame size is NOT stored as a sync safe integer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 503
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    goto/16 :goto_0
.end method

.method private createV24FrameFromV23Frame(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 127
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating V24frame from v23:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 134
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 135
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 136
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:UnsupportedBody:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOOD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTMOO;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTMOO;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 144
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 151
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 162
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_0

    .line 168
    :cond_3
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 169
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 170
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 171
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:Deprecated:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_4
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 178
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 179
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 180
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V3:Unknown:Orig id is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":New id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFrameSize(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 530
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    .line 532
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    if-gez v0, :cond_0

    .line 534
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Invalid Frame size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 535
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    if-nez v0, :cond_1

    .line 539
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Empty Frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 543
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 544
    new-instance v0, Lorg/FiioGetMusicInfo/tag/EmptyFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

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

    .line 546
    :cond_1
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_2

    .line 548
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is invalid frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_2
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V

    .line 553
    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    .prologue
    .line 1105
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frameSize"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1107
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    .line 1108
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/a;->b()V

    .line 1109
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->createStructure()V

    .line 1110
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    if-ne p0, p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-nez v2, :cond_2

    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 360
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getEncodingFlags()Lorg/FiioGetMusicInfo/tag/id3/a;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encryptionMethod:I

    return v0
.end method

.method protected getFrameFlagsSize()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method protected getFrameHeaderSize()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0xa

    return v0
.end method

.method protected getFrameIdSize()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x4

    return v0
.end method

.method protected getFrameSizeSize()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x4

    return v0
.end method

.method public getGroupIdentifier()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->groupIdentifier:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStatusFlags()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .prologue
    .line 1126
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->isBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 1118
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->isCommon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1096
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-virtual {p0, v5}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Invalid identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 572
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":is not a valid ID3v2.30 frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getFrameSize(Ljava/nio/ByteBuffer;)V

    .line 579
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/g;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/g;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 580
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/f;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 585
    const/4 v1, 0x0

    .line 586
    const/4 v2, -0x1

    .line 587
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const/4 v0, 0x1

    .line 590
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->groupIdentifier:I

    move v1, v0

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    add-int/lit8 v1, v1, 0x1

    .line 597
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encryptionMethod:I

    .line 600
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 603
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 604
    add-int/lit8 v1, v1, 0x4

    .line 605
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Frame Size Is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Data Length Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move v8, v0

    move v0, v1

    move v1, v8

    .line 609
    :goto_0
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    sub-int v3, v2, v0

    .line 612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 613
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 617
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 624
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 626
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":Frame Size After Syncing is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v4, v2

    move v2, v0

    .line 632
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1, v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 635
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p0, v5, v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 654
    :goto_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;

    if-nez v0, :cond_3

    .line 656
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Converted frame body with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to deprecated framebody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 657
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 665
    return-void

    .line 641
    :cond_4
    :try_start_1
    invoke-virtual {p0, v5, v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 661
    :catchall_0
    move-exception v0

    .line 663
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 664
    throw v0

    .line 644
    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 646
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 648
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameSize:I

    invoke-virtual {p0, v5, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto :goto_2

    .line 652
    :cond_6
    invoke-virtual {p0, v5, v4, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    move-object v4, v2

    move v2, v3

    goto/16 :goto_1

    :cond_8
    move v0, v1

    move v1, v2

    goto/16 :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 3

    .prologue
    .line 1136
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1141
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    .line 1144
    :cond_0
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 676
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing frame to file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 680
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 683
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 684
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 687
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 688
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 689
    :goto_0
    if-eqz v2, :cond_0

    .line 691
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 692
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bodybytebuffer:sizeafterunsynchronisation:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 698
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 700
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    .line 702
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v4, v0, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 706
    array-length v0, v1

    .line 707
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Frame Size Is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 708
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 712
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->statusFlags:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 715
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->l()V

    .line 718
    if-eqz v2, :cond_5

    .line 720
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->h()V

    .line 727
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->i()V

    .line 728
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->k()V

    .line 729
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 734
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 736
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encryptionMethod:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 741
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->groupIdentifier:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 747
    :cond_3
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    return-void

    :cond_4
    move v2, v3

    .line 688
    goto/16 :goto_0

    .line 724
    :cond_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->encodingFlags:Lorg/FiioGetMusicInfo/tag/id3/a;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/f;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/f;->j()V

    goto :goto_1

    .line 749
    :catch_0
    move-exception v0

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
