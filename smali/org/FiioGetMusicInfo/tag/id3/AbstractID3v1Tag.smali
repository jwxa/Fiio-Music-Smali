.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;
.source "AbstractID3v1Tag.java"


# static fields
.field protected static final END_OF_FIELD:B = 0x0t

.field protected static final FIELD_ALBUM_LENGTH:I = 0x1e

.field protected static final FIELD_ALBUM_POS:I = 0x3f

.field protected static final FIELD_ARTIST_LENGTH:I = 0x1e

.field protected static final FIELD_ARTIST_POS:I = 0x21

.field protected static final FIELD_GENRE_LENGTH:I = 0x1

.field protected static final FIELD_GENRE_POS:I = 0x7f

.field protected static final FIELD_TAGID_LENGTH:I = 0x3

.field protected static final FIELD_TAGID_POS:I = 0x0

.field protected static final FIELD_TITLE_LENGTH:I = 0x1e

.field protected static final FIELD_TITLE_POS:I = 0x3

.field protected static final FIELD_YEAR_LENGTH:I = 0x4

.field protected static final FIELD_YEAR_POS:I = 0x5d

.field protected static final TAG_DATA_LENGTH:I = 0x7d

.field protected static final TAG_ID:[B

.field protected static final TAG_LENGTH:I = 0x80

.field protected static final TYPE_ALBUM:Ljava/lang/String; = "album"

.field protected static final TYPE_ARTIST:Ljava/lang/String; = "artist"

.field protected static final TYPE_GENRE:Ljava/lang/String; = "genre"

.field protected static final TYPE_TITLE:Ljava/lang/String; = "title"

.field protected static final TYPE_YEAR:Ljava/lang/String; = "year"

.field protected static endofStringPattern:Ljava/util/regex/Pattern;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    .line 61
    const-string v0, "\\x00"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    .line 89
    return-void

    .line 64
    nop

    :array_0
    .array-data 1
        0x54t
        0x41t
        0x47t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;)V

    .line 55
    return-void
.end method

.method public static seekForV1OrV11Tag(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 108
    new-array v0, v2, [B

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 111
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x80

    .line 123
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Deleting ID3v1 from file if exists"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not not appear large enough to contain a tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 134
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 137
    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->seekForV1OrV11Tag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Deleted ID3v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete existing ID3v1 Tag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Unable to find ID3v1 tag to deleteField"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x80

    return v0
.end method
