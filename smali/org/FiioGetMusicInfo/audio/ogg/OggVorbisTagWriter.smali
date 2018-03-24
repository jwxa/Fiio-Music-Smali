.class public Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;
.super Ljava/lang/Object;
.source "OggVorbisTagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

.field private tc:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "org.FiioGetMusicInfo.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->tc:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;

    .line 48
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    .line 42
    return-void
.end method

.method private calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object v1

    .line 155
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 162
    return-void

    .line 157
    :cond_0
    add-int/lit8 v2, v0, 0x16

    aget-byte v3, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createSegmentTable(IILjava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 530
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create SegmentTable CommentLength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":SetupHeaderLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 531
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 538
    if-nez p2, :cond_0

    .line 541
    invoke-direct {p0, p1, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 548
    :cond_0
    invoke-direct {p0, p1, v4}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v2

    .line 552
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 554
    invoke-direct {p0, p2, v4}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 562
    :goto_1
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " segments for header"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 563
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " segments for setup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 567
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 568
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 569
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 573
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating segments for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 574
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 585
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_2
    invoke-direct {p0, p2, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    goto :goto_1

    .line 574
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 576
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 577
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 581
    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create segment table:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createSegmentTable(ILjava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 610
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 611
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 626
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 615
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 617
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 618
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 624
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create segment table:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createSegments(IZ)[B
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 647
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create Segments for length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":QuitStream:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 649
    if-nez p1, :cond_0

    .line 651
    new-array v0, v0, [B

    .line 652
    aput-byte v1, v0, v1

    .line 663
    :goto_0
    return-object v0

    .line 656
    :cond_0
    div-int/lit16 v2, p1, 0xff

    rem-int/lit16 v3, p1, 0xff

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 658
    :goto_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 662
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v1, v1, 0xff

    sub-int v1, p1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 660
    :cond_2
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 675
    .line 677
    if-nez p1, :cond_3

    move v0, v1

    .line 689
    :cond_0
    :goto_0
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Require:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " segments for comment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 691
    if-nez p2, :cond_4

    .line 693
    add-int/lit8 v0, v0, 0x1

    .line 703
    :cond_1
    :goto_1
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Require:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " segments for comment plus setup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 705
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 721
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total No Of Segment If New Comment And Header Put On One Page:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 722
    const/16 v0, 0xff

    if-gt v2, v0, :cond_7

    :goto_3
    return v1

    .line 683
    :cond_3
    div-int/lit16 v0, p1, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 684
    rem-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_4
    div-int/lit16 v2, p2, 0xff

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 698
    rem-int/lit16 v2, p2, 0xff

    if-nez v2, :cond_1

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 707
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v4

    if-nez v4, :cond_6

    .line 709
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 710
    goto :goto_2

    .line 713
    :cond_6
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v4

    div-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 714
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    rem-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    .line 716
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 722
    :cond_7
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private replacePagesAndRenumberPageSeqs(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 9

    .prologue
    .line 294
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    .line 297
    const v0, 0xfe01

    div-int v4, p2, v0

    .line 298
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Comment requires:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " complete pages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    .line 302
    if-lez v4, :cond_0

    .line 304
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_2

    :cond_0
    move v6, v1

    .line 342
    const v1, 0xfe01

    rem-int v2, p2, v1

    .line 343
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Last comment packet size:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 348
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "WriteOgg Type 3"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v3

    .line 353
    array-length v1, v3

    add-int/lit8 v1, v1, 0x1b

    .line 354
    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 355
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 356
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v1

    const/4 v5, 0x0

    const/16 v7, 0x1a

    invoke-virtual {v2, v1, v5, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 357
    array-length v1, v3

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 358
    array-length v5, v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_5

    .line 362
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 364
    const/16 v0, 0x12

    invoke-virtual {v2, v0, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 366
    if-lez v4, :cond_1

    .line 368
    const/4 v0, 0x5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 370
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Writing Last Comment Page "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 371
    add-int/lit8 v6, v6, 0x1

    .line 372
    invoke-direct {p0, v2}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 373
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 378
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegmentTable(ILjava/util/List;)[B

    move-result-object v1

    .line 379
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1b

    .line 380
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v2

    .line 381
    array-length v3, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 382
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 383
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v0

    const/4 v4, 0x0

    const/16 v5, 0x1a

    invoke-virtual {v3, v0, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 384
    array-length v0, v1

    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 385
    array-length v4, v1

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v4, :cond_6

    .line 389
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    const/16 v0, 0x12

    invoke-virtual {v3, v0, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 392
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing Setup Header and packets Page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 395
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 431
    :goto_3
    invoke-virtual {p0, v6, p5, p6}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 432
    return-void

    .line 307
    :cond_2
    const v2, 0xfe01

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v5

    .line 308
    array-length v2, v5

    add-int/lit8 v2, v2, 0x1b

    .line 309
    const v6, 0xfe01

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 310
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v2

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v6, v2, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 315
    array-length v2, v5

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 317
    array-length v7, v5

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v7, :cond_4

    .line 322
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 323
    const v5, 0xfe01

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 324
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 327
    const/16 v2, 0x12

    invoke-virtual {v6, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v2, v1, 0x1

    .line 331
    if-eqz v3, :cond_3

    .line 333
    const/4 v1, 0x5

    sget-object v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v5

    invoke-virtual {v6, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 335
    :cond_3
    invoke-direct {p0, v6}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 336
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 337
    const v1, 0xfe01

    add-int/2addr v1, v0

    .line 338
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    goto/16 :goto_0

    .line 317
    :cond_4
    aget-byte v8, v5, v2

    .line 319
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 358
    :cond_5
    aget-byte v7, v3, v1

    .line 360
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 385
    :cond_6
    aget-byte v5, v1, v0

    .line 387
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 401
    :cond_7
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "WriteOgg Type 4"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v3

    add-int/2addr v3, v1

    .line 405
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 407
    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v2

    invoke-virtual {p5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 418
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 425
    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 426
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 427
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/16 :goto_3
.end method

.method private replaceSecondPageAndRenumberPageSeqs(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6

    .prologue
    .line 264
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 265
    invoke-direct/range {p0 .. p5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 268
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    .line 269
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p6}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v2

    .line 270
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 273
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 274
    invoke-virtual {p7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 275
    invoke-virtual {p0, v1, p6, p7}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 276
    return-void
.end method

.method private replaceSecondPageOnly(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 12

    .prologue
    .line 234
    sget-object v4, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "WriteOgg Type 1"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 235
    invoke-direct/range {p0 .. p5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 237
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result v5

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 241
    invoke-virtual/range {p8 .. p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 242
    invoke-direct {p0, v4}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 243
    invoke-virtual/range {p9 .. p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 244
    invoke-virtual/range {p9 .. p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual/range {p8 .. p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual/range {p9 .. p9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual/range {p8 .. p8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual/range {p8 .. p8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 245
    return-void
.end method

.method private startCreateBasicSecondPage(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 182
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "WriteOgg Type 1"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->createSegmentTable(IILjava/util/List;)[B

    move-result-object v1

    .line 184
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1b

    .line 185
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New second page header length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 186
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No of segments:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 189
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v2, v3, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 195
    array-length v3, v1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 204
    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 205
    return-object v2

    .line 198
    :cond_0
    aget-byte v4, v1, v0

    .line 200
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    invoke-virtual {p0, v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->write(Lorg/FiioGetMusicInfo/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 67
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->write(Lorg/FiioGetMusicInfo/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public write(Lorg/FiioGetMusicInfo/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 15

    .prologue
    .line 71
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Starting to write file:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Read 1st Page:identificationHeader:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v8

    .line 76
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getStartByte()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1b

    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 80
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 81
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Written identificationHeader:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v6

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 88
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read 2nd Page:comment and setup and possibly audio:Header finishes at file position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 92
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->reader:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    move-result-object v3

    .line 95
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->tc:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;->convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 101
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v5

    add-int/2addr v5, v2

    .line 102
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Old 2nd Page no of packets: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Old 2nd Page size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Old last packet incomplete: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setup Header Size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Extra Packets: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Extra Packet Data Size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Old comment: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "New comment: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "New Page Data Size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v2

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v4, v2, v10}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v2

    const v10, 0xfe01

    if-ge v2, v10, :cond_2

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_0

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x2

    if-le v2, v10, :cond_2

    .line 125
    :cond_1
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v10, "Header and Setup remain on single page:"

    invoke-virtual {v2, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 126
    invoke-direct/range {v2 .. v11}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->replaceSecondPageOnly(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_2
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v8, "Header and Setup now on single page:"

    invoke-virtual {v2, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 132
    invoke-direct/range {v2 .. v9}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->replaceSecondPageAndRenumberPageSeqs(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 138
    :cond_3
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Header and Setup with shift audio:"

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v8, p0

    move-object v9, v3

    move v10, v4

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 139
    invoke-direct/range {v8 .. v14}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->replacePagesAndRenumberPageSeqs(Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 10

    .prologue
    .line 446
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 447
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 450
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 451
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 454
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 455
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 456
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 477
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 480
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 482
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    const-string v1, "File written counts don\'t match, file not written"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v6

    .line 462
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 463
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 465
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 466
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 467
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 468
    const/16 v8, 0x12

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v7, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 469
    invoke-direct {p0, v7}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 470
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 472
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 473
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 484
    :cond_1
    return-void
.end method

.method public writeRemainingPagesOld(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 8

    .prologue
    .line 489
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 490
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 491
    sget-object v4, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing audio, audio starts in original file at :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Written to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 492
    :goto_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 512
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    const-string v1, "File written counts don\'t match, file not written"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    sget-object v4, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Reading Ogg Page"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 495
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v4

    .line 499
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 500
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 503
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 506
    const/16 v4, 0x12

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, v4, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 509
    invoke-direct {p0, v5}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 510
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 516
    :cond_1
    return-void
.end method
