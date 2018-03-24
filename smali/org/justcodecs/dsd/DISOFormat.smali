.class public Lorg/justcodecs/dsd/DISOFormat;
.super Lorg/justcodecs/dsd/DSDFormat;
.source "DISOFormat.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/justcodecs/dsd/Scarletbook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/justcodecs/dsd/DSDFormat",
        "<[B>;",
        "Ljava/lang/Runnable;",
        "Lorg/justcodecs/dsd/Scarletbook;"
    }
.end annotation


# static fields
.field static final QUEUE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

.field block:I

.field buff:[B

.field currentFrame:I

.field decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field dsdBuf:[B

.field dst:Lorg/justcodecs/dsd/DSTDecoder;

.field dstBuff:[B

.field dstLen:I

.field dstPakBuf:[B

.field dstSeek:Z

.field dstStart:Z

.field frmHdrSize:I

.field frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

.field hdrIdx:I

.field header:[B

.field lastFrm:I

.field private noTrackInfo_trackCount:I

.field private noTrackInfo_trackDuration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noTrackInfo_trackStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field processor:Ljava/lang/Thread;

.field readingThread:Ljava/lang/Thread;

.field runException:Ljava/lang/Throwable;

.field sectorSize:I

.field sectorStartOffset:I

.field seekSample:J

.field sleepRequested:Z

.field tail:I

.field textDuration:I

.field toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

.field usedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/justcodecs/dsd/DISOFormat;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 15
    invoke-direct {p0}, Lorg/justcodecs/dsd/DSDFormat;-><init>()V

    .line 31
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstPakBuf:[B

    .line 43
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->usedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackCount:I

    .line 49
    iput-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackStart:Ljava/util/List;

    .line 50
    iput-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackDuration:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    .line 600
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 604
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/justcodecs/dsd/DSDFormat;->close()V

    .line 605
    return-void

    .line 602
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    goto :goto_0
.end method

.method public getNoTrackInfo_trackCount()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackCount:I

    return v0
.end method

.method public getNoTrackInfo_trackDuration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackDuration:Ljava/util/List;

    return-object v0
.end method

.method public getNoTrackInfo_trackStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackStart:Ljava/util/List;

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v0, v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->channel_count:B

    goto :goto_0
.end method

.method getProcessed()[B
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    .line 572
    :try_start_0
    iget-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->usedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSampleCount()J
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    if-nez v0, :cond_0

    .line 319
    const-wide/16 v0, 0x0

    .line 320
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v0, v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minutes:B

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v1, v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->seconds:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v1, v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frames:B

    div-int/lit8 v1, v1, 0x4b

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->sample_frequency:I

    goto :goto_0
.end method

.method bridge synthetic getSamples()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSamples()[B

    move-result-object v0

    return-object v0
.end method

.method getSamples()[B
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    return-object v0
.end method

.method public getTimeAdjustment()D
    .locals 4

    .prologue
    .line 430
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->textDuration:I

    if-gtz v0, :cond_0

    .line 431
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 432
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v0

    long-to-double v0, v0

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->textDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getTrackCount()V
    .locals 3

    .prologue
    .line 608
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "areaToc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public init(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 14

    .prologue
    const/16 v1, 0x20

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 55
    new-instance v2, Lorg/justcodecs/dsd/Scarletbook$TOC;

    invoke-direct {v2}, Lorg/justcodecs/dsd/Scarletbook$TOC;-><init>()V

    iput-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    .line 58
    const-wide/32 v6, 0xff000

    :try_start_0
    invoke-interface {p1, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 59
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    invoke-virtual {v2, p1}, Lorg/justcodecs/dsd/Scarletbook$TOC;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 60
    const/16 v2, 0x800

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc1Start:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/2addr v2, v4

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v2, v4

    int-to-long v6, v2

    invoke-interface {p1, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 71
    new-instance v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    invoke-direct {v2}, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;-><init>()V

    iput-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    .line 72
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc1Start:I

    if-lez v2, :cond_0

    .line 73
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget v4, v4, Lorg/justcodecs/dsd/Scarletbook$TOC;->area1Toc1Start:I

    invoke-virtual {v2, p1, v4}, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->read(Lorg/justcodecs/dsd/DSDStream;I)V

    .line 74
    :cond_0
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-boolean v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->stereo:Z

    if-nez v2, :cond_1

    .line 75
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_1_start:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/2addr v2, v4

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v2, v4

    int-to-long v6, v2

    invoke-interface {p1, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 77
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget v4, v4, Lorg/justcodecs/dsd/Scarletbook$TOC;->area_2_toc_1_start:I

    invoke-virtual {v2, p1, v4}, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->read(Lorg/justcodecs/dsd/DSDStream;I)V

    .line 78
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-boolean v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->stereo:Z

    if-nez v2, :cond_1

    .line 79
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "No two channels track found"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_1
    move-exception v2

    const-wide/32 v6, 0x100fec

    :try_start_2
    invoke-interface {p1, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 63
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    invoke-virtual {v2, p1}, Lorg/justcodecs/dsd/Scarletbook$TOC;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 64
    const/16 v2, 0x810

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    .line 65
    const/16 v2, 0xc

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frame_format:B

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Lorg/justcodecs/dsd/DSTDecoder;

    invoke-direct {v2}, Lorg/justcodecs/dsd/DSTDecoder;-><init>()V

    iput-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :try_start_3
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v4, v4, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->channel_count:B

    iget-object v6, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v6, v6, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->sample_frequency:I

    const v7, 0xac44

    div-int/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Lorg/justcodecs/dsd/DSTDecoder;->init(II)V
    :try_end_3
    .catch Lorg/justcodecs/dsd/e; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    :cond_2
    :try_start_4
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frame_format:B

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    .line 91
    const/16 v2, 0x11c

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    .line 96
    :cond_3
    :goto_1
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/lit16 v2, v2, 0x1ff

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v2, v4

    int-to-long v6, v2

    invoke-interface {p1, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 98
    new-instance v8, Lorg/justcodecs/dsd/Scarletbook$CDText;

    invoke-direct {v8}, Lorg/justcodecs/dsd/Scarletbook$CDText;-><init>()V

    .line 99
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;

    invoke-virtual {v8, p1, v2}, Lorg/justcodecs/dsd/Scarletbook$CDText;->read(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)V

    .line 100
    new-instance v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_count:B

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    if-nez v4, :cond_4

    move v1, v5

    :cond_4
    invoke-direct {v9, v2, v1}, Lorg/justcodecs/dsd/Scarletbook$TrackText;-><init>(BI)V

    .line 101
    new-instance v10, Lorg/justcodecs/dsd/Scarletbook$TrackTime;

    invoke-direct {v10}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;-><init>()V

    move v6, v3

    move-object v1, v0

    move v4, v5

    .line 106
    :goto_2
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-short v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->size:S

    if-lt v6, v2, :cond_9

    .line 147
    if-eqz v1, :cond_5

    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackCount:I

    .line 149
    iput-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackStart:Ljava/util/List;

    .line 150
    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->noTrackInfo_trackDuration:Ljava/util/List;

    .line 153
    :cond_5
    if-nez v4, :cond_6

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    iput-object v0, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    :cond_6
    move v0, v5

    .line 155
    :goto_3
    iget-object v1, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 159
    iget-object v0, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 160
    iget-object v0, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    iget-object v1, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    iget-object v1, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    iget-object v2, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->duration:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->textDuration:I

    .line 161
    :cond_7
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Artist"

    iget-object v2, v8, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    const-string v3, "album_artist"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Title"

    iget-object v2, v8, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    const-string v3, "disc_title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Album"

    iget-object v2, v8, Lorg/justcodecs/dsd/Scarletbook$CDText;->textInfo:Ljava/util/HashMap;

    const-string v3, "album_title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Tracks"

    iget-object v2, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Year"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget-short v3, v3, Lorg/justcodecs/dsd/Scarletbook$TOC;->disc_date_year:S

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Genre"

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$TOC;->albumGenre:[Lorg/justcodecs/dsd/Scarletbook$Genre;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$Genre;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    .line 170
    return-void

    .line 85
    :catch_2
    move-exception v0

    .line 86
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "Coudn\'t initialize DST decoder"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :cond_8
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-byte v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frame_format:B

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 93
    const/16 v2, 0x20

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    goto/16 :goto_1

    .line 108
    :cond_9
    if-nez v4, :cond_a

    .line 109
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->start:I

    add-int/2addr v2, v6

    iget v7, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/2addr v2, v7

    iget v7, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v2, v7

    int-to-long v12, v2

    invoke-interface {p1, v12, v13}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :try_start_5
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->encoding:Ljava/lang/String;

    invoke-virtual {v9, p1, v2}, Lorg/justcodecs/dsd/Scarletbook$TrackText;->read(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move v2, v3

    .line 106
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto/16 :goto_2

    :catch_3
    move-exception v2

    .line 118
    :cond_a
    :try_start_6
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->start:I

    add-int/2addr v2, v6

    iget v7, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/2addr v2, v7

    iget v7, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v2, v7

    int-to-long v12, v2

    invoke-interface {p1, v12, v13}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 120
    :try_start_7
    invoke-virtual {v10, p1}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 122
    if-nez v1, :cond_e

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 126
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move v0, v5

    move v7, v5

    .line 128
    :cond_b
    if-nez v7, :cond_c

    const/4 v11, 0x0

    :try_start_9
    invoke-virtual {v10, v11}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getDuration(I)I

    move-result v11

    if-eqz v11, :cond_c

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getStart(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getDuration(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v7, v7, 0x1

    .line 141
    :goto_5
    if-eqz v0, :cond_b

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    .line 143
    goto :goto_4

    .line 133
    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getStart(I)I

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getDuration(I)I

    move-result v11

    if-eqz v11, :cond_d

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getStart(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getDuration(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    goto :goto_5

    :cond_d
    move v0, v3

    .line 139
    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :cond_e
    :goto_6
    move v2, v4

    goto/16 :goto_4

    .line 156
    :cond_f
    :try_start_a
    iget-object v1, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    aget-object v1, v1, v0

    invoke-virtual {v10, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getStart(I)I

    move-result v2

    iput v2, v1, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    .line 157
    iget-object v1, v9, Lorg/justcodecs/dsd/Scarletbook$TrackText;->infos:[Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    aget-object v1, v1, v0

    invoke-virtual {v10, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackTime;->getDuration(I)I

    move-result v2

    iput v2, v1, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->duration:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v1, v2

    goto :goto_6
.end method

.method initBuffers(I)V
    .locals 4

    .prologue
    .line 332
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Area TOC wasn\'t processed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    rsub-int v0, v0, 0x800

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    .line 335
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->tail:I

    .line 336
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->tail:I

    if-lez v0, :cond_1

    .line 337
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->tail:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    .line 339
    :cond_1
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    if-nez v0, :cond_2

    .line 340
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    .line 341
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHdrSize:I

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_2
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstBuff:[B

    .line 344
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v0, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->z:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v1, v1, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    .line 345
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v0, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->z:I

    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v1, v1, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdBuf:[B

    .line 346
    new-instance v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-direct {v0}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    .line 347
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 349
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->usedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v2, v2, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->z:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v3, v3, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v3, v3, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isDST()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMSB()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method putForProcessing([B)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method readDSTDataBlock()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    if-eqz v2, :cond_3

    .line 220
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v4, v4, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 262
    :goto_1
    return v0

    .line 222
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 223
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    if-lez v2, :cond_2

    .line 224
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    invoke-interface {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 227
    :cond_2
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 228
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 230
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lez v2, :cond_5

    .line 231
    const/4 v2, 0x0

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    .line 239
    :cond_3
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->isFrameStart(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 241
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    if-lez v2, :cond_7

    .line 243
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    if-gez v2, :cond_6

    .line 244
    :goto_2
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dstBuff:[B

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdBuf:[B

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget v6, p0, Lorg/justcodecs/dsd/DISOFormat;->lastFrm:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/justcodecs/dsd/DSTDecoder;->FramDSTDecode([B[BII)V

    .line 245
    if-lez v0, :cond_4

    .line 246
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_4
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v2, v2, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v2, Lorg/justcodecs/dsd/h;->C:J

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v4, v4, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v4, Lorg/justcodecs/dsd/h;->b:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 250
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdBuf:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    const/4 v3, 0x0

    iput v3, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    .line 260
    add-int/2addr v0, v2

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    move v0, v1

    .line 262
    goto :goto_1

    .line 233
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 234
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dstPakBuf:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    iget-object v6, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v6}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSize()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    sub-int/2addr v5, v6

    invoke-interface {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_0
    .catch Lorg/justcodecs/dsd/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "Problem in DST decoding"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :cond_6
    :try_start_1
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    sub-int/2addr v0, v2

    goto :goto_2

    .line 264
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstSeek:Z

    .line 268
    :cond_8
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dstBuff:[B

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget-object v5, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v6, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v5, v6}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 272
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getDataType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    iget-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstSeek:Z

    if-nez v2, :cond_9

    .line 273
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    .line 275
    :cond_9
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getFrames(I)I

    move-result v2

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->lastFrm:I

    .line 276
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    .line 277
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt v2, v3, :cond_0

    .line 279
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 280
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v2

    move v3, v2

    move v2, v1

    .line 281
    :goto_3
    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v4, v4, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt v2, v4, :cond_a

    .line 283
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v4}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSize()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    sub-int/2addr v2, v3

    .line 284
    if-lez v2, :cond_b

    .line 285
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dstPakBuf:[B

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_1
    .catch Lorg/justcodecs/dsd/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "I/O problem"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 282
    :cond_a
    :try_start_2
    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v4, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 286
    :cond_b
    if-gez v2, :cond_0

    .line 287
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem in DST decoding in frame "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lorg/justcodecs/dsd/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method readDSTDataBlockAsync()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    .line 439
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    const-string v3, "DST decoder"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 441
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->readingThread:Ljava/lang/Thread;

    .line 450
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :try_start_2
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    :try_start_3
    monitor-exit v3

    .line 459
    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    if-gez v3, :cond_4

    move v3, v1

    .line 460
    :goto_0
    if-lez v3, :cond_1

    .line 461
    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    iget-object v6, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    :cond_1
    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v4, v4, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v4, v4, Lorg/justcodecs/dsd/h;->C:J

    iget-object v6, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v6, v6, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v6, v6, Lorg/justcodecs/dsd/h;->b:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x8

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 463
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    invoke-static {v0, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    iget-object v5, p0, Lorg/justcodecs/dsd/DISOFormat;->usedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    .line 466
    add-int v0, v3, v4

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v2

    .line 484
    :goto_1
    return v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_2
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 445
    goto :goto_1

    .line 455
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v1

    goto :goto_1

    .line 450
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 468
    :catch_0
    move-exception v0

    .line 478
    :goto_2
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 479
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    instance-of v0, v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    if-eqz v0, :cond_7

    .line 480
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    check-cast v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    throw v0

    .line 459
    :cond_4
    :try_start_6
    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    sub-int/2addr v3, v4

    goto :goto_0

    .line 470
    :catch_1
    move-exception v0

    .line 472
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    .line 473
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 474
    :cond_5
    instance-of v2, v0, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_6

    .line 475
    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 476
    :cond_6
    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    goto :goto_2

    .line 482
    :cond_7
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Error at decoding"

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    move v0, v1

    .line 484
    goto :goto_1
.end method

.method readDataBlock()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->readDSTDataBlockAsync()Z

    move-result v0

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 187
    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    if-gez v1, :cond_2

    .line 188
    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    .line 189
    :cond_2
    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    sub-int/2addr v1, v2

    .line 190
    if-lez v1, :cond_3

    .line 191
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    array-length v4, v4

    invoke-interface {v0, v2, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 198
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->buff:[B

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    invoke-interface {v0, v2, v1, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 202
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    .line 204
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->block:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/justcodecs/dsd/DISOFormat;->tail:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO exception at reading samples"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 490
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :try_start_1
    iget-wide v2, p0, Lorg/justcodecs/dsd/DISOFormat;->seekSample:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 492
    iget-wide v2, p0, Lorg/justcodecs/dsd/DISOFormat;->seekSample:J

    invoke-virtual {p0, v2, v3}, Lorg/justcodecs/dsd/DISOFormat;->seek(J)V

    .line 490
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :try_start_2
    iget-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    if-eqz v0, :cond_7

    .line 496
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_5

    .line 557
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->readingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->readingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 559
    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    monitor-enter v1

    .line 561
    :try_start_3
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->decodedBuffs:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 559
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 564
    :cond_3
    iget-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    if-eqz v0, :cond_4

    .line 565
    iput-object v7, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    .line 566
    iput-boolean v6, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    .line 568
    :cond_4
    return-void

    .line 490
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0

    .line 547
    :catch_0
    move-exception v0

    goto :goto_1

    .line 498
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 499
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    if-lez v0, :cond_6

    .line 500
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    invoke-interface {v0, v2, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 501
    :cond_6
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 502
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 503
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lez v0, :cond_8

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    .line 511
    :cond_7
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->isFrameStart(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 513
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    if-lez v0, :cond_9

    .line 516
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstBuff:[B

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getProcessed()[B

    move-result-object v3

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->lastFrm:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSTDecoder;->FramDSTDecode([B[BII)V

    .line 519
    invoke-virtual {p0, v3}, Lorg/justcodecs/dsd/DISOFormat;->putForProcessing([B)V

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 549
    :catch_1
    move-exception v0

    .line 551
    iput-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->runException:Ljava/lang/Throwable;

    .line 552
    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_2

    .line 553
    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 506
    :cond_8
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 507
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstPakBuf:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    iget-object v5, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v5}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSize()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    sub-int/2addr v4, v5

    invoke-interface {v0, v2, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    goto/16 :goto_0

    .line 523
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstSeek:Z

    .line 527
    :cond_a
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dstBuff:[B

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v4, v5}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 529
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getDataType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    iget-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstSeek:Z

    if-nez v0, :cond_b

    .line 530
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    .line 532
    :cond_b
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getFrames(I)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->lastFrm:I

    .line 533
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    .line 534
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->hdrIdx:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt v0, v2, :cond_0

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 537
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 538
    :goto_2
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt v0, v3, :cond_c

    .line 540
    iget v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSize()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    sub-int/2addr v0, v2

    .line 541
    if-lez v0, :cond_d

    .line 542
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dstPakBuf:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    goto/16 :goto_0

    .line 539
    :cond_c
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    invoke-virtual {v3, v0}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 543
    :cond_d
    if-gez v0, :cond_0

    .line 544
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem in DST decoding in frame "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 559
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method seek(J)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-wide v2, p0, Lorg/justcodecs/dsd/DISOFormat;->seekSample:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 373
    iput-wide p1, p0, Lorg/justcodecs/dsd/DISOFormat;->seekSample:J

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_0
    return-void

    .line 370
    :cond_0
    monitor-exit p0

    .line 379
    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    .line 380
    :try_start_1
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v1, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v1, v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 419
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstStart:Z

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstLen:I

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/justcodecs/dsd/DISOFormat;->seekSample:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 383
    :cond_2
    cmp-long v2, p1, v4

    if-lez v2, :cond_9

    :try_start_2
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_9

    .line 386
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->textDuration:I

    if-lez v2, :cond_3

    .line 387
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getTimeAdjustment()D

    move-result-wide v2

    long-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 390
    :cond_3
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    .line 391
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to seek non existing sample "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 392
    :cond_4
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 393
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 398
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->isDST()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    :cond_5
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    if-lez v2, :cond_6

    .line 401
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->header:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorStartOffset:I

    invoke-interface {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 402
    :cond_6
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-virtual {v2, v3}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 403
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-nez v2, :cond_7

    .line 404
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 405
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 407
    :cond_7
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    iget v2, v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-eqz v2, :cond_5

    .line 408
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v2

    int-to-long v2, v2

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 409
    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getMinutes(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->frmHeader:Lorg/justcodecs/dsd/Scarletbook$FrmHeader;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSeconds(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 410
    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, p1

    .line 411
    iget-object v4, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v4, v4, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    iget-object v5, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v5, v5, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    .line 412
    iget-object v2, p0, Lorg/justcodecs/dsd/DISOFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    iget v4, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    iget v3, p0, Lorg/justcodecs/dsd/DISOFormat;->sectorSize:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 413
    iget v2, p0, Lorg/justcodecs/dsd/DISOFormat;->currentFrame:I

    if-lez v2, :cond_8

    :goto_2
    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->dstSeek:Z

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    .line 416
    :cond_9
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to seek non existing sample "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public sleep()V
    .locals 1

    .prologue
    .line 585
    invoke-super {p0}, Lorg/justcodecs/dsd/DSDFormat;->sleep()V

    .line 586
    monitor-enter p0

    .line 587
    :try_start_0
    iget-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/justcodecs/dsd/DISOFormat;->sleepRequested:Z

    .line 589
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lorg/justcodecs/dsd/DISOFormat;->processor:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 586
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
