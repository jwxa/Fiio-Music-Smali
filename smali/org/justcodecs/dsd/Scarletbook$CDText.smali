.class public Lorg/justcodecs/dsd/Scarletbook$CDText;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static data:[B


# instance fields
.field album_artist_phonetic_position:S

.field album_artist_position:S

.field album_copyright_phonetic_position:S

.field album_copyright_position:S

.field album_publisher_phonetic_position:S

.field album_publisher_position:S

.field album_title_phonetic_position:S

.field album_title_position:S

.field disc_artist_phonetic_position:S

.field disc_artist_position:S

.field disc_copyright_phonetic_position:S

.field disc_copyright_position:S

.field disc_publisher_phonetic_position:S

.field disc_publisher_position:S

.field disc_title_phonetic_position:S

.field disc_title_position:S

.field id:[B

.field textInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 460
    const/16 v0, 0x7d0

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->id:[B

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    .line 442
    return-void
.end method


# virtual methods
.method addText(Ljava/lang/String;SLjava/lang/String;)V
    .locals 5

    .prologue
    const/16 v3, 0xff

    .line 516
    if-nez p2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    .line 527
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    add-int/lit8 v3, p2, -0x30

    const/16 v4, 0xff

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text data can\'t be decoded using "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 520
    :cond_2
    :try_start_1
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    add-int/lit8 v2, p2, -0x30

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    if-nez v1, :cond_3

    .line 521
    if-lez v0, :cond_0

    .line 522
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    add-int/lit8 v4, p2, -0x30

    invoke-direct {v2, v3, v4, v0, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method read(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 464
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scarletbook read encoding : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-nez p2, :cond_0

    .line 466
    const-string p2, "UTF-8"

    .line 468
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->id:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->id:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 469
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->id:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 470
    const-string v1, "SACDText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text area not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 472
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 473
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_title_position:S

    .line 474
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_artist_position:S

    .line 475
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_publisher_position:S

    .line 476
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_copyright_position:S

    .line 477
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_title_phonetic_position:S

    .line 478
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_artist_phonetic_position:S

    .line 479
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_publisher_phonetic_position:S

    .line 480
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_copyright_phonetic_position:S

    .line 481
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_title_position:S

    .line 482
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_artist_position:S

    .line 483
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_publisher_position:S

    .line 484
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_copyright_position:S

    .line 485
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_title_phonetic_position:S

    .line 486
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_artist_phonetic_position:S

    .line 487
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_publisher_phonetic_position:S

    .line 488
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_copyright_phonetic_position:S

    .line 489
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    const/4 v1, 0x0

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$CDText;->data:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 490
    const-string v0, "album_title"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_title_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 491
    const-string v0, "album_artist"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_artist_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 492
    const-string v0, "album_publisher"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_publisher_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 493
    const-string v0, "album_copyright"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_copyright_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 494
    const-string v0, "album_title_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_title_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 495
    const-string v0, "album_artist_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_artist_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 496
    const-string v0, "album_title_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_title_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 497
    const-string v0, "album_artist_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_artist_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 498
    const-string v0, "album_publisher_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_publisher_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 499
    const-string v0, "album_copyright_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->album_copyright_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 500
    const-string v0, "disc_title"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_title_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 501
    const-string v0, "disc_artist"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_artist_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 502
    const-string v0, "disc_publisher"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_publisher_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 503
    const-string v0, "disc_copyright"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_copyright_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V

    .line 504
    const-string v0, "disc_title_phonetic"

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$CDText;->disc_title_phonetic_position:S

    invoke-virtual {p0, v0, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->addText(Ljava/lang/String;SLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    return-void
.end method
