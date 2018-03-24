.class public Lorg/justcodecs/dsd/Scarletbook$TrackTime;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static data:[B


# instance fields
.field id:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 667
    const/16 v0, 0x7f8

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->id:[B

    .line 665
    return-void
.end method


# virtual methods
.method getDuration(I)I
    .locals 4

    .prologue
    .line 689
    mul-int/lit8 v0, p1, 0x4

    add-int/lit16 v0, v0, 0x3fc

    .line 690
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    aget-byte v1, v1, v0

    mul-int/lit8 v1, v1, 0x3c

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v2, v0

    div-int/lit8 v0, v0, 0x4b

    add-int/2addr v0, v1

    return v0
.end method

.method getStart(I)I
    .locals 4

    .prologue
    .line 684
    mul-int/lit8 v0, p1, 0x4

    .line 685
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    aget-byte v1, v1, v0

    mul-int/lit8 v1, v1, 0x3c

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v2, v0

    div-int/lit8 v0, v0, 0x4b

    add-int/2addr v0, v1

    return v0
.end method

.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    .line 671
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->id:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->id:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 672
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->id:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 673
    const-string v1, "SACDTRL2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 675
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Track time not found "

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

    .line 678
    :catch_0
    move-exception v0

    .line 679
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 677
    :cond_0
    :try_start_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    const/4 v1, 0x0

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->data:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    return-void
.end method
