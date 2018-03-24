.class public Lorg/justcodecs/dsd/SacdDataFormat;
.super Ljava/lang/Object;
.source "SacdDataFormat.java"


# static fields
.field public static final DST_FORMAT:I = 0x1

.field public static final ERROR_CHANNELS:I = 0x2

.field public static final ERROR_FILE:I = 0x3

.field public static final NORMAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private album:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field decoder:Lorg/justcodecs/dsd/Decoder;

.field dsd:Lorg/justcodecs/dsd/DSDFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/justcodecs/dsd/DSDFormat",
            "<*>;"
        }
    .end annotation
.end field

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private path:Ljava/lang/String;

.field private randomListManager:Lcom/fiio/music/util/ce;

.field private sacdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/justcodecs/dsd/Sacd;",
            ">;"
        }
    .end annotation
.end field

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private style:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/justcodecs/dsd/SacdDataFormat;->TAG:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    .line 39
    const-string v0, "0"

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    .line 39
    const-string v0, "0"

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->createDecoder()Lorg/justcodecs/dsd/Decoder;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    .line 39
    const-string v0, "0"

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    iput-object p2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 46
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    .line 48
    :try_start_0
    invoke-direct {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->decoderTheSacdFile()V

    .line 49
    invoke-direct {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->convertToSongList()V
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertToSongList()V
    .locals 11

    .prologue
    const v10, 0x7f0c00d4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iput-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 339
    return-void

    .line 303
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    .line 304
    new-instance v4, Lcom/fiio/music/entity/Song;

    invoke-direct {v4}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 305
    const/4 v1, -0x1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 306
    iget v1, v0, Lorg/justcodecs/dsd/Sacd;->track:I

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 307
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 311
    invoke-virtual {v4, v9}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 312
    invoke-virtual {v4, v8}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 313
    invoke-virtual {v4, v8}, Lcom/fiio/music/entity/Song;->setLike(Z)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getYear()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 315
    new-instance v5, Lcom/fiio/music/entity/Artist;

    invoke-direct {v5}, Lcom/fiio/music/entity/Artist;-><init>()V

    .line 316
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Lcom/fiio/music/entity/Artist;->setName(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 318
    new-instance v5, Lcom/fiio/music/entity/Album;

    invoke-direct {v5}, Lcom/fiio/music/entity/Album;-><init>()V

    .line 319
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getAlbum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getAlbum()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Lcom/fiio/music/entity/Album;->setName(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 321
    new-instance v5, Lcom/fiio/music/entity/SongStyle;

    invoke-direct {v5}, Lcom/fiio/music/entity/SongStyle;-><init>()V

    .line 322
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStyle()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Lcom/fiio/music/entity/SongStyle;->setName(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 324
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSampleRate()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 325
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSampleRate()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 326
    invoke-virtual {v4, v9}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getChannels()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 328
    const-string v1, "ISO"

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setMimeType(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 331
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    .line 332
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    .line 333
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    .line 336
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 319
    :cond_2
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c00d5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 322
    :cond_3
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c00d6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 334
    :cond_4
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private decoderTheSacdFile()V
    .locals 22

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/justcodecs/dsd/SacdDataFormat;->createDecoder()Lorg/justcodecs/dsd/Decoder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 192
    :try_start_0
    new-instance v2, Lorg/justcodecs/dsd/DISOFormat;

    invoke-direct {v2}, Lorg/justcodecs/dsd/DISOFormat;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    new-instance v3, Lorg/justcodecs/dsd/Utils$RandomDSDStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Decoder;->init(Lorg/justcodecs/dsd/DSDFormat;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->metaDataIsExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->albumTitle:Ljava/lang/String;

    .line 206
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Year"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->metaDataIsExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Year"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    const-string v4, "Year"

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/DSDFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    iget-object v3, v3, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    const-string v4, "Album"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    iget-object v3, v3, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    const-string v4, "Album"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->album:Ljava/lang/String;

    .line 212
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    iget-object v3, v3, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    const-string v4, "Genre"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    iget-object v3, v3, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    const-string v4, "Genre"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    .line 214
    :cond_3
    const-string v3, "rate="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const-string v4, ", chann"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 215
    const-string v3, "channels="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    const-string v4, ", DST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 216
    const-string v3, "DST="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    const-string v4, ", track"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 219
    const-string v3, "tracks:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 220
    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 221
    const-string v3, "TrackInfo "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 222
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 224
    if-eqz v18, :cond_4

    .line 225
    const/4 v3, 0x0

    .line 226
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move/from16 v0, v20

    if-lt v14, v0, :cond_7

    .line 263
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 264
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    .line 299
    :cond_5
    :goto_2
    return-void

    .line 203
    :cond_6
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->albumTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 297
    new-instance v3, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 226
    :cond_7
    :try_start_1
    aget-object v6, v18, v14

    .line 227
    if-eqz v3, :cond_8

    .line 228
    const/4 v4, 0x0

    .line 229
    const/4 v2, 0x0

    .line 230
    const-string v5, "start="

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 233
    const-string v4, "start="

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    const-string v5, ", duration"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 235
    :goto_3
    const-string v4, "duration="

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 236
    const-string v2, "duration="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    const-string v4, ", toString"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 238
    :goto_4
    const-string v2, "performer="

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 239
    const-string v2, ", title"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 240
    const-string v2, "performer="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    const-string v4, ", title"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 251
    :goto_5
    const-string v2, "title="

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 252
    const-string v2, "title="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    const-string v4, "}]"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 256
    :goto_6
    new-instance v2, Lorg/justcodecs/dsd/Sacd;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/SacdDataFormat;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 257
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    .line 256
    :goto_7
    invoke-direct/range {v2 .. v13}, Lorg/justcodecs/dsd/Sacd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    .line 258
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 226
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_1

    .line 242
    :cond_9
    const-string v2, "performer="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    const-string v4, "}]"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->album:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/SacdDataFormat;->album:Ljava/lang/String;

    goto :goto_5

    .line 248
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 254
    :cond_c
    const-string v4, "unknown"

    goto :goto_6

    .line 257
    :cond_d
    const/4 v13, 0x1

    goto :goto_7

    .line 267
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->getNoTrackInfo_trackCount()I

    move-result v18

    .line 268
    if-eqz v18, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->getNoTrackInfo_trackStart()Ljava/util/List;

    move-result-object v20

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->getNoTrackInfo_trackDuration()Ljava/util/List;

    move-result-object v21

    .line 274
    const/4 v2, 0x0

    move v14, v2

    :goto_8
    move/from16 v0, v18

    if-lt v14, v0, :cond_f

    .line 290
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    goto/16 :goto_2

    .line 275
    :cond_f
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 276
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/SacdDataFormat;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " TRACK "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v14, 0x1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    new-instance v2, Lorg/justcodecs/dsd/Sacd;

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/SacdDataFormat;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/SacdDataFormat;->style:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 286
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/SacdDataFormat;->year:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const/4 v13, 0x0

    .line 285
    :goto_a
    invoke-direct/range {v2 .. v13}, Lorg/justcodecs/dsd/Sacd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    .line 287
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_8

    .line 281
    :cond_10
    add-int/lit8 v2, v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_9

    .line 286
    :cond_11
    const/4 v13, 0x1

    goto :goto_a

    :cond_12
    move-object v9, v2

    goto/16 :goto_4

    :cond_13
    move-object v8, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public autoPlayNextSacdTrack(Ljava/io/File;I)V
    .locals 12

    .prologue
    .line 406
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->z()I

    move-result v1

    .line 407
    const-string v0, "sin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------playMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 409
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 411
    packed-switch v1, :pswitch_data_0

    :cond_0
    move v7, v0

    .line 434
    :goto_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 438
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 439
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v2, v7, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 440
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 441
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v4, v7, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 442
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v5, v7, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 443
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 444
    iget-object v8, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, p2

    .line 443
    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 445
    :goto_1
    return-void

    .line 413
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 414
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(I)V

    .line 416
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->L()V

    .line 417
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->N()V

    goto :goto_1

    .line 422
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 423
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 424
    const/4 v0, 0x1

    move v7, v0

    .line 426
    goto/16 :goto_0

    :pswitch_2
    move v7, v0

    .line 428
    goto/16 :goto_0

    .line 430
    :pswitch_3
    invoke-static {}, Lcom/fiio/music/util/ce;->a()Lcom/fiio/music/util/ce;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    .line 431
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(I)V

    .line 433
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {v0}, Lcom/fiio/music/util/ce;->b()I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkErrorFormat(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    .line 106
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 161
    :cond_1
    :goto_0
    return v0

    .line 110
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 115
    :cond_3
    new-instance v2, Lorg/justcodecs/dsd/DFFFormat;

    invoke-direct {v2}, Lorg/justcodecs/dsd/DFFFormat;-><init>()V

    iput-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    .line 119
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    new-instance v3, Lorg/justcodecs/dsd/Utils$RandomDSDStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 120
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->createDecoder()Lorg/justcodecs/dsd/Decoder;

    move-result-object v2

    iput-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 121
    :cond_4
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    iget-object v3, p0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Decoder;->init(Lorg/justcodecs/dsd/DSDFormat;)V

    .line 122
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v3, "DST="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    const-string v4, ", track"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v4, "channels="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    const-string v5, ", DST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 125
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_5
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 131
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 110
    :pswitch_0
    const-string v2, "DSF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    new-instance v2, Lorg/justcodecs/dsd/DSFFormat;

    invoke-direct {v2}, Lorg/justcodecs/dsd/DSFFormat;-><init>()V

    iput-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    goto/16 :goto_1

    .line 133
    :cond_7
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eq v2, v0, :cond_8

    .line 163
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    goto/16 :goto_0

    .line 137
    :cond_8
    :try_start_2
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_9
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 142
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 147
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :cond_b
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    :cond_c
    move v0, v1

    .line 152
    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    .line 156
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_d

    .line 157
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    :cond_d
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v0, :cond_e

    .line 164
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    :cond_e
    move v0, v1

    .line 161
    goto/16 :goto_0

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    if-eqz v1, :cond_f

    .line 164
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 165
    iput-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    .line 167
    :cond_f
    throw v0

    .line 110
    :pswitch_data_0
    .packed-switch 0x10997
        :pswitch_0
    .end packed-switch
.end method

.method createDecoder()Lorg/justcodecs/dsd/Decoder;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/justcodecs/dsd/DecoderInt;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DecoderInt;-><init>()V

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPlayerManager()Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    goto :goto_0
.end method

.method public getNumbersOfSong(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->path:Ljava/lang/String;

    .line 531
    :try_start_0
    invoke-direct {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->decoderTheSacdFile()V

    .line 532
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 539
    :goto_0
    return v0

    .line 535
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    .line 536
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSacdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/justcodecs/dsd/Sacd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    return-object v0
.end method

.method public getSacdSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    goto :goto_0
.end method

.method public getSongInMemoryModeByTrack(I)Lcom/fiio/music/entity/Song;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 63
    invoke-virtual {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/justcodecs/dsd/SacdDataFormat;->isDst()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lorg/justcodecs/dsd/SacdDataFormat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSongInMemoryModeByTrack error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 72
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 77
    goto :goto_0
.end method

.method public getSongNameArray()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 371
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    .line 373
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-object v3

    .line 373
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    .line 374
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0
.end method

.method public isDst()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->isDST()Z

    move-result v0

    .line 351
    :cond_0
    return v0
.end method

.method public isLoad()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playNextSacdTrack(Ljava/io/File;I)V
    .locals 12

    .prologue
    .line 453
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->z()I

    move-result v1

    .line 454
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 455
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 457
    packed-switch v1, :pswitch_data_0

    :cond_0
    move v7, v0

    .line 471
    :goto_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 476
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 477
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v2, v7, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 478
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 479
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v4, v7, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 480
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v5, v7, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 481
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 482
    iget-object v8, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, p2

    .line 481
    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 483
    return-void

    .line 461
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 462
    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 463
    const/4 v0, 0x1

    move v7, v0

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1
    invoke-static {}, Lcom/fiio/music/util/ce;->a()Lcom/fiio/music/util/ce;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    .line 468
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(I)V

    .line 470
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {v0}, Lcom/fiio/music/util/ce;->b()I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public playPreSacdTrack(Ljava/io/File;I)V
    .locals 12

    .prologue
    .line 491
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->z()I

    move-result v1

    .line 492
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 493
    iget-object v2, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 495
    packed-switch v1, :pswitch_data_0

    :cond_0
    move v7, v0

    .line 509
    :goto_0
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 513
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 514
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v2, v7, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 515
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 516
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v4, v7, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 517
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v5, v7, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 518
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 519
    iget-object v8, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, p2

    .line 518
    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 520
    return-void

    .line 499
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 500
    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 503
    goto :goto_0

    .line 505
    :pswitch_1
    invoke-static {}, Lcom/fiio/music/util/ce;->a()Lcom/fiio/music/util/ce;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    .line 506
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    iget-object v1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(I)V

    .line 508
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->randomListManager:Lcom/fiio/music/util/ce;

    invoke-virtual {v0}, Lcom/fiio/music/util/ce;->c()I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public playSacdFile(Ljava/io/File;II)V
    .locals 12

    .prologue
    .line 389
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 390
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 391
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 392
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 393
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    .line 394
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 395
    iget-object v0, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v6, p0, Lorg/justcodecs/dsd/SacdDataFormat;->songList:Ljava/util/List;

    .line 396
    iget-object v7, p0, Lorg/justcodecs/dsd/SacdDataFormat;->decoder:Lorg/justcodecs/dsd/Decoder;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Lorg/justcodecs/dsd/SacdDataFormat;->sacdList:Ljava/util/List;

    add-int/lit8 v10, p2, -0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, p3

    .line 395
    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 397
    return-void
.end method

.method public setMediaPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    iput-object p1, p0, Lorg/justcodecs/dsd/SacdDataFormat;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 179
    :cond_0
    return-void
.end method
