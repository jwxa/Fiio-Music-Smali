.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;
.source "ID3v11Tag.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I = null

.field protected static final FIELD_COMMENT_LENGTH:I = 0x1c

.field protected static final FIELD_COMMENT_POS:I = 0x61

.field protected static final FIELD_TRACK_INDICATOR_LENGTH:I = 0x1

.field protected static final FIELD_TRACK_INDICATOR_POS:I = 0x7d

.field protected static final FIELD_TRACK_LENGTH:I = 0x1

.field protected static final FIELD_TRACK_POS:I = 0x7e

.field private static final MAJOR_VERSION:B = 0x1t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field protected static final TRACK_MAX_VALUE:I = 0xff

.field protected static final TRACK_MIN_VALUE:I = 0x1

.field protected static final TRACK_UNDEFINED:I = 0x0

.field protected static final TYPE_TRACK:Ljava/lang/String; = "track"


# instance fields
.field protected track:B


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/FieldKey;->values()[Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 252
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 229
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 231
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 236
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 238
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->read(Ljava/nio/ByteBuffer;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 5

    .prologue
    const/16 v1, 0x1e

    .line 127
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 129
    if-eqz p1, :cond_1

    .line 131
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_2

    .line 133
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 139
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 144
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-nez v0, :cond_9

    .line 152
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 160
    :goto_1
    const-string v0, "TIT2"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    const-string v0, "TIT2"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 163
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;->getText()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 166
    :cond_3
    const-string v0, "TPE1"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const-string v0, "TPE1"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 169
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;->getText()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 172
    :cond_4
    const-string v0, "TALB"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    const-string v0, "TALB"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 175
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;->getText()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 178
    :cond_5
    const-string v0, "TDRC"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    const-string v0, "TDRC"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 181
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v0

    .line 182
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 185
    :cond_6
    const-string v0, "COMM"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const-string v0, "COMM"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 188
    const-string v0, ""

    move-object v1, v0

    .line 189
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    const/16 v0, 0x1c

    invoke-static {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 196
    :cond_7
    const-string v0, "TCON"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    const-string v0, "TCON"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 199
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getText()Ljava/lang/String;

    move-result-object v0

    .line 202
    :try_start_0
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->findNumber(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_8
    :goto_3
    const-string v0, "TRCK"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "TRCK"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 213
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    goto/16 :goto_0

    .line 156
    :cond_9
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    goto/16 :goto_1

    .line 191
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unable to convert TCON frame to format suitable for v11 tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    goto :goto_3
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 118
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 119
    return-void
.end method


# virtual methods
.method public addTrack(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 613
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "artist"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "album"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "comment"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "track"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 621
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "genre"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 622
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 431
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 448
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 453
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 452
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    .line 453
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 370
    :pswitch_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :pswitch_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_5
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_6
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 406
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 413
    :goto_0
    return-object v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_1
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getRelease()B
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getTrack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 419
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    if-gtz v0, :cond_0

    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/16 v2, 0x80

    const/16 v4, 0x1e

    const/4 v5, 0x0

    .line 493
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    const-string v1, "ID3v1 tag not found"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading v1.1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 500
    new-array v0, v2, [B

    .line 501
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 502
    invoke-virtual {p1, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 503
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 504
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 509
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 510
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 515
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3f

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 516
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 521
    :cond_3
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x5d

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 522
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 525
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 527
    :cond_4
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x61

    const/16 v3, 0x1c

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 528
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 533
    :cond_5
    const/16 v1, 0x7e

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 534
    const/16 v1, 0x7f

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    .line 535
    return-void
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 465
    new-array v1, v2, [B

    .line 467
    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 468
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->TAG_ID:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 2

    .prologue
    .line 342
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 343
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne v0, v1, :cond_0

    .line 345
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 293
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 301
    :goto_0
    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    if-gtz v0, :cond_1

    .line 303
    :cond_0
    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    .line 309
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    goto :goto_1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/4 v1, 0x0

    .line 546
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Saving ID3v11 tag to file"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 547
    const/16 v0, 0x80

    new-array v2, v0, [B

    .line 550
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 551
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 552
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->TAG_ID:[B

    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->TAG_ID:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 557
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_6

    .line 562
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 566
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 571
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 575
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_8

    .line 580
    :cond_2
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 584
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_9

    .line 589
    :cond_3
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 598
    :cond_4
    const/16 v0, 0x7e

    iget-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    aput-byte v1, v2, v0

    .line 600
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    const/16 v0, 0x7f

    iget-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    aput-byte v1, v2, v0

    .line 605
    :cond_5
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 607
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Saved ID3v11 tag to file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 608
    return-void

    .line 559
    :cond_6
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 568
    :cond_7
    add-int/lit8 v4, v0, 0x21

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 577
    :cond_8
    add-int/lit8 v4, v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 586
    :cond_9
    add-int/lit8 v4, v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 595
    :cond_a
    add-int/lit8 v3, v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
