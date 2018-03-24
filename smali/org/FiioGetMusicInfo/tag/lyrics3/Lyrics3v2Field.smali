.class public Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;
.source "Lyrics3v2Field.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->read(Ljava/nio/ByteBuffer;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "USLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "SYLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 84
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 91
    :cond_3
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 94
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 95
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 100
    :cond_4
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 116
    :cond_6
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 126
    :cond_7
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagException;

    const-string v1, "Cannot createField Lyrics3v2 field from given ID3v2 frame"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 53
    return-void
.end method

.method private readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
    .locals 1

    .prologue
    .line 231
    const-string v0, "AUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/nio/ByteBuffer;)V

    .line 267
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-string v0, "EAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "EAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v0, "ETT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 247
    :cond_3
    const-string v0, "IMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 251
    :cond_4
    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIND;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 255
    :cond_5
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 259
    :cond_6
    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 265
    :cond_7
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    .line 148
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 180
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 182
    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is not a valid ID3v2.4 frame"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    .line 196
    const-string v0, ""

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isLyrics3SaveEmptyField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [B

    .line 210
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 211
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 218
    :cond_1
    return-void

    .line 213
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
