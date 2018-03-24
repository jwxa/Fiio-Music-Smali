.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;
.source "ID3v1Tag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I = null

.field protected static final BYTE_TO_UNSIGNED:I = 0xff

.field protected static final FIELD_COMMENT_LENGTH:I = 0x1e

.field protected static final FIELD_COMMENT_POS:I = 0x61

.field protected static final GENRE_UNDEFINED:I = 0xff

.field private static final MAJOR_VERSION:B = 0x0t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field protected static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field static tagFieldToID3v1Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            "Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected album:Ljava/lang/String;

.field protected artist:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected genre:B

.field protected title:Ljava/lang/String;

.field protected year:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I

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
    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey:[I

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

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 53
    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 210
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 188
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 194
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 196
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->read(Ljava/nio/ByteBuffer;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 154
    if-eqz p1, :cond_1

    .line 157
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_2

    .line 163
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    .line 169
    :goto_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 174
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->genre:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 176
    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;)V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 143
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 148
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 149
    return-void
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 649
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 5

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    .line 699
    if-nez v0, :cond_1

    .line 701
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->INVALID_FIELD_FOR_ID3V1TAG:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 1051
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "artist"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "album"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "comment"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "genre"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1059
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public deleteArtworkField()V
    .locals 2

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 860
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 865
    :cond_0
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 2

    .prologue
    .line 830
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 856
    :goto_0
    :pswitch_0
    return-void

    .line 833
    :pswitch_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :pswitch_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :pswitch_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :pswitch_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :pswitch_5
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_0

    .line 830
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
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 873
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 898
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 877
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 878
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 880
    goto :goto_0

    .line 882
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_2
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 888
    goto :goto_0

    .line 890
    :cond_3
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 892
    goto :goto_0

    .line 894
    :cond_4
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 896
    goto :goto_0

    .line 898
    :cond_5
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getAlbum()Ljava/util/List;
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
    .line 308
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v0
.end method

.method public getArtist()Ljava/util/List;
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
    .line 351
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/util/List;
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
    .line 382
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 708
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x6

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO:Not done yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 239
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 2
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
    .line 726
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 747
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    .line 729
    :pswitch_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 732
    :pswitch_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 735
    :pswitch_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 738
    :pswitch_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 741
    :pswitch_5
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 726
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
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 780
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 801
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 783
    :pswitch_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 789
    :pswitch_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 792
    :pswitch_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 795
    :pswitch_5
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 780
    nop

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
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getFirstAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 564
    .line 566
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object v1

    .line 591
    :goto_0
    if-eqz v1, :cond_0

    .line 593
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 595
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 598
    :cond_0
    return-object v0

    .line 570
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 574
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 578
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 580
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 582
    :cond_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 584
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 714
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 437
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    if-nez v0, :cond_0

    .line 440
    const-string v0, ""

    .line 444
    :cond_0
    return-object v0
.end method

.method public getFirstTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ID3v10 cannot store track numbers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/util/List;
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
    .line 457
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 459
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getRelease()B
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getSubValue(Lorg/FiioGetMusicInfo/tag/FieldKey;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/util/List;
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
    .line 501
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getTrack()Ljava/util/List;
    .locals 2
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
    .line 559
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ID3v10 cannot store track numbers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Ljava/util/List;
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
    .line 541
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 622
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 626
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 635
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 636
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 632
    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 906
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Iterator;-><init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    const/16 v3, 0x80

    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 916
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":ID3v1 tag not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Reading v1 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 922
    new-array v0, v3, [B

    .line 923
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 924
    invoke-virtual {p1, v0, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 925
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 926
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 931
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 932
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 933
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 935
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 937
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3f

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 938
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 939
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Orig Album is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 942
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 943
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Album is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 945
    :cond_3
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x5d

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 946
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 949
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 951
    :cond_4
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x61

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v6, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 952
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 953
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Orig Comment is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 956
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 957
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Comment is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 959
    :cond_5
    const/16 v1, 0x7f

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 961
    return-void
.end method

.method protected returnFieldToList(Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-object v0
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 970
    new-array v0, v2, [B

    .line 972
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 973
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->TAG_ID:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x1

    return v0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 644
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 645
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 2

    .prologue
    .line 654
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 655
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$FieldKey()[I

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 681
    :goto_0
    :pswitch_0
    return-void

    .line 658
    :pswitch_1
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :pswitch_2
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :pswitch_3
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :pswitch_4
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :pswitch_5
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_0

    .line 655
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
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 2

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_1
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/4 v1, 0x0

    .line 984
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Saving ID3v1 tag to file"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 985
    const/16 v0, 0x80

    new-array v2, v0, [B

    .line 988
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 989
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 991
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->TAG_ID:[B

    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->TAG_ID:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 996
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_6

    .line 1001
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1005
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 1010
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1014
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_8

    .line 1019
    :cond_2
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1023
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_9

    .line 1028
    :cond_3
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1031
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 1037
    :cond_4
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1040
    const/16 v0, 0x7f

    iget-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    aput-byte v1, v2, v0

    .line 1042
    :cond_5
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1043
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Saved ID3v1 tag to file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1044
    return-void

    .line 998
    :cond_6
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_7
    add-int/lit8 v4, v0, 0x21

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1016
    :cond_8
    add-int/lit8 v4, v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1025
    :cond_9
    add-int/lit8 v4, v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1034
    :cond_a
    add-int/lit8 v3, v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
