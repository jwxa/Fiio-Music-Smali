.class public Lorg/justcodecs/dsd/Scarletbook$TrackText;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# instance fields
.field data:[B

.field id:[B

.field infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

.field startOffset:I


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackText;-><init>(BI)V

    .line 628
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->id:[B

    .line 618
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->data:[B

    .line 622
    new-array v0, p1, [Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    .line 623
    iput p2, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->startOffset:I

    .line 624
    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 632
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->id:[B

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->id:[B

    array-length v3, v3

    invoke-interface {p1, v0, v1, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 633
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->id:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 634
    const-string v1, "SACDTTxt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 636
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected SACDTTxt, but found  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for Track text"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v3, v2

    move v1, v2

    .line 640
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v0, v0

    if-lt v3, v0, :cond_1

    .line 652
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->id:[B

    array-length v0, v0

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->startOffset:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-interface {p1, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 653
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->data:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->data:[B

    array-length v4, v4

    invoke-interface {p1, v0, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    move v0, v2

    .line 654
    :goto_1
    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 659
    return-void

    .line 641
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    .line 642
    if-lez v0, :cond_4

    .line 643
    iget-object v4, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    new-instance v5, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    invoke-direct {v5, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;-><init>(I)V

    aput-object v5, v4, v3

    .line 644
    if-nez v1, :cond_3

    .line 640
    :cond_2
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 646
    :cond_3
    if-lt v0, v1, :cond_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 655
    :cond_5
    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 656
    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$TrackText;->data:[B

    invoke-virtual {v2, v3, v1, p2}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->fill([BILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
