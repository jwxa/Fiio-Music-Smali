.class public Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;
.super Ljava/lang/Object;
.source "FlacTagReader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$flac$metadatablock$BlockType:[I = null

.field private static final JFIF:Ljava/lang/String; = "4a464946"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$flac$metadatablock$BlockType()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$flac$metadatablock$BlockType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->values()[Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->APPLICATION:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->CUESHEET:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->PADDING:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->SEEKTABLE:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$flac$metadatablock$BlockType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "org.FiioGetMusicInfo.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    .line 52
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v3, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;

    invoke-direct {v3, p1}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 64
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->findStream()V

    .line 67
    const/4 v0, 0x0

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 72
    :goto_0
    if-eqz v1, :cond_3

    .line 144
    :cond_0
    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    .line 148
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;

    invoke-direct {v1, v0, v4}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;-><init>(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 152
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    if-eqz v0, :cond_2

    .line 153
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v0

    new-array v0, v0, [B

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 156
    new-instance v3, Ljava/lang/String;

    const-string v4, "iso-8859-1"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 157
    const-string v0, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    array-length v3, v0

    if-le v3, v10, :cond_2

    .line 162
    :try_start_0
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->setField1(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_3

    .line 187
    :cond_2
    :goto_1
    sput-boolean v2, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    .line 189
    return-object v1

    .line 74
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Looking for MetaBlockHeader at:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 80
    :cond_4
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    .line 81
    if-eqz v5, :cond_0

    .line 83
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reading MetadataBlockHeader:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ending at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 94
    :cond_5
    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 97
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$flac$metadatablock$BlockType()[I

    move-result-object v1

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 131
    :pswitch_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    sget-object v1, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring MetadataBlock:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 135
    :cond_6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    goto/16 :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 103
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    invoke-virtual {v1, v0, v2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    goto :goto_2

    .line 109
    :pswitch_2
    :try_start_1
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-direct {v1, v5, p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 110
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 112
    :catch_0
    move-exception v1

    .line 114
    sget-object v6, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to read picture metablock, ignoring:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :catch_1
    move-exception v1

    .line 119
    sget-object v6, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to read picture metablock, ignoring"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :catch_2
    move-exception v1

    const-string v1, "long"

    const-string v6, "flac\u6587\u4ef6\u56fe\u7247\u4fe1\u606f\u5185\u5b58\u6ea2\u51fa---FlacTagReader.java"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    :catch_3
    move-exception v0

    .line 165
    :goto_3
    const-string v3, "long"

    const-string v4, "\u6dfb\u52a0\u56fe\u7247tag\u51fa\u9519"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    :catch_4
    move-exception v0

    goto :goto_3

    .line 97
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
