.class public Lorg/FiioGetMusicInfo/audio/mp3/MP3File;
.super Lorg/FiioGetMusicInfo/audio/AudioFile;
.source "MP3File.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version:[I = null

.field public static final LOAD_ALL:I = 0xe

.field public static final LOAD_IDV1TAG:I = 0x2

.field public static final LOAD_IDV2TAG:I = 0x4

.field public static final LOAD_LYRICS3:I = 0x8

.field private static final MINIMUM_FILESIZE:I = 0x96

.field protected static tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;


# instance fields
.field private id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

.field private id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

.field private id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

.field private lyrics3tag:Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version()[I
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->values()[Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ID3_V22:Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ID3_V23:Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ID3_V24:Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/AudioFile;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 68
    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 73
    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->lyrics3tag:Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;

    .line 79
    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 616
    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;-><init>(Ljava/io/File;I)V

    .line 617
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/AudioFile;-><init>()V

    .line 63
    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 68
    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 73
    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->lyrics3tag:Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;

    .line 79
    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 450
    :try_start_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    .line 453
    invoke-virtual {p0, p1, p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 456
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v2

    .line 457
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TagHeaderSize:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 458
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-direct {v0, p1, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    .line 461
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "First header found after tag:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-direct {p0, v2, v3, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->checkAudioStart(JLorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;)Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    .line 468
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V

    .line 471
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->readV2Tag(Ljava/io/File;II)V

    .line 477
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tag:Lorg/FiioGetMusicInfo/tag/Tag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 493
    :cond_2
    return-void

    .line 481
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tag:Lorg/FiioGetMusicInfo/tag/Tag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    .line 488
    if-eqz v1, :cond_4

    .line 490
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 492
    :cond_4
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    .line 101
    return-void
.end method

.method private checkAudioStart(JLorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;)Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 362
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_ID3TAG_LENGTH_INCORRECT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p1, p2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 368
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking from start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 375
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 376
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 375
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-object p3

    .line 383
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 384
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 383
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 389
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 390
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 389
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object p3, v0

    .line 391
    goto :goto_0

    .line 397
    :cond_2
    long-to-int v1, p1

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->isFilePortionNull(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    .line 404
    iget-object v3, v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 403
    invoke-direct {v1, v2, v4, v5}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 408
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 410
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 411
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 410
    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_3
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 419
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 420
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 419
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object p3, v0

    .line 421
    goto/16 :goto_0

    .line 426
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 427
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 426
    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static createPlainTextStructureFormatter()V
    .locals 1

    .prologue
    .line 1097
    new-instance v0, Lorg/FiioGetMusicInfo/logging/PlainTextTagDisplayFormatter;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/logging/PlainTextTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    .line 1098
    return-void
.end method

.method private static createXMLStructureFormatter()V
    .locals 1

    .prologue
    .line 1092
    new-instance v0, Lorg/FiioGetMusicInfo/logging/XMLTagDisplayFormatter;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/logging/XMLTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    .line 1093
    return-void
.end method

.method public static getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    return-object v0
.end method

.method private isFilePortionNull(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 315
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking file portion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 320
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 322
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 323
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 324
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 335
    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 340
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 345
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 327
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    if-eqz v1, :cond_3

    .line 337
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 340
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 329
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 335
    :goto_1
    if-eqz v1, :cond_4

    .line 337
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 340
    :cond_4
    if-eqz v2, :cond_5

    .line 342
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 344
    :cond_5
    throw v0

    .line 334
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 2

    .prologue
    .line 143
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "Attempting to read id3v1tags"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 152
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "No ids3v11 tag found"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "No id3v1 tag found"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readV2Tag(Ljava/io/File;II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 183
    const/16 v1, 0xa

    if-lt p3, v1, :cond_8

    .line 185
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Attempting to read id3v2tags"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 191
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 193
    :try_start_2
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    int-to-long v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 203
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 208
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 216
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Attempting to read id3v2tags"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :try_start_4
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/tag/TagNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    :goto_1
    :try_start_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    :try_end_5
    .catch Lorg/FiioGetMusicInfo/tag/TagNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    :cond_1
    :goto_2
    :try_start_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/tag/TagNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 258
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    :try_start_7
    const-string v0, "sun.nio.ch.DirectBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 266
    const-string v2, "cleaner"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 267
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clean"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 270
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_9

    .line 290
    :cond_3
    :goto_4
    return-void

    .line 198
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_5
    :try_start_8
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 199
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 203
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 208
    :cond_4
    if-eqz v1, :cond_9

    .line 210
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move-object v1, v2

    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 203
    :goto_6
    if-eqz v1, :cond_5

    .line 205
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 208
    :cond_5
    if-eqz v6, :cond_6

    .line 210
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 212
    :cond_6
    throw v0

    .line 227
    :catch_1
    move-exception v0

    :try_start_9
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "No id3v24 tag found"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 256
    :catchall_1
    move-exception v0

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v2

    if-nez v2, :cond_7

    .line 265
    :try_start_a
    const-string v2, "sun.nio.ch.DirectBuffer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 266
    const-string v3, "cleaner"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 267
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_7

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clean"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 270
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_6

    .line 284
    :cond_7
    :goto_7
    throw v0

    .line 239
    :catch_2
    move-exception v0

    :try_start_b
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "No id3v23 tag found"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 251
    :catch_3
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "No id3v22 tag found"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 277
    :catch_4
    move-exception v1

    .line 278
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not invoke DirectBuffer method - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_7

    .line 280
    :catch_5
    move-exception v1

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Could not invoke DirectBuffer method - target exception"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_7

    .line 282
    :catch_6
    move-exception v1

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Could not invoke DirectBuffer method - illegal access"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_7

    .line 277
    :catch_7
    move-exception v0

    .line 278
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not invoke DirectBuffer method - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 280
    :catch_8
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "Could not invoke DirectBuffer method - target exception"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 282
    :catch_9
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "Could not invoke DirectBuffer method - illegal access"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 288
    :cond_8
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough room for valid id3v2 tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 272
    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_7

    .line 202
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_6

    :catchall_4
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_6

    .line 198
    :catch_c
    move-exception v1

    move-object v1, v6

    goto/16 :goto_5

    :cond_9
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 2

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_1

    .line 918
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 921
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 923
    :catch_1
    move-exception v0

    .line 925
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertTag(Lorg/FiioGetMusicInfo/tag/Tag;Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 1139
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_1

    .line 1141
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1175
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 1144
    :pswitch_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1146
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1151
    :cond_1
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_2

    .line 1153
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1156
    :pswitch_3
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1160
    :pswitch_4
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1163
    :cond_2
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_0

    .line 1165
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$ID3V2Version()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/reference/ID3V2Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1170
    :pswitch_5
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1172
    :pswitch_6
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1165
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public delete(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 883
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 884
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;->delete(Ljava/io/RandomAccessFile;)V

    .line 885
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 886
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    .line 888
    iput-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 891
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_1

    .line 893
    iput-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 895
    :cond_1
    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1076
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->createPlainTextStructureFormatter()V

    .line 1077
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    const-string v1, "file"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->createStructure()V

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 1086
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1087
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1057
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->createXMLStructureFormatter()V

    .line 1058
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    const-string v1, "file"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->createStructure()V

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 1067
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1068
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tagFormatter:Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    long-to-int v0, v0

    .line 543
    if-ltz v0, :cond_0

    .line 547
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 548
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 549
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 550
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 553
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 554
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 555
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 556
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 557
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 558
    return-object p1

    .line 560
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    const-string v1, "There is no ID3v2Tag data in this file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHash()[B
    .locals 2

    .prologue
    .line 707
    const-string v0, "MD5"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getHash(I)[B
    .locals 1

    .prologue
    .line 691
    const-string v0, "MD5"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getHash(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 673
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getHash(Ljava/lang/String;I)[B
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 725
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v2

    .line 726
    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getMP3StartByte(Ljava/io/File;)J

    move-result-wide v4

    .line 729
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->hasID3v1Tag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->getSize()I

    move-result v0

    .line 738
    :goto_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 742
    new-array v6, p2, [B

    .line 744
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 746
    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 749
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long v4, v8, v4

    int-to-long v8, v0

    sub-long/2addr v4, v8

    .line 750
    array-length v0, v6

    .line 752
    :goto_1
    int-to-long v8, v0

    cmp-long v2, v8, v4

    if-lez v2, :cond_0

    .line 759
    long-to-int v2, v4

    sub-int v0, v2, v0

    array-length v2, v6

    add-int/2addr v0, v2

    invoke-virtual {v3, v6, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 760
    invoke-virtual {v7, v6, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 762
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 764
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 766
    return-object v0

    .line 754
    :cond_0
    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 756
    invoke-virtual {v7, v6, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 757
    array-length v2, v6

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getID3v1Tag()Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    return-object v0
.end method

.method public getID3v2Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getID3v2TagAsv24()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    return-object v0
.end method

.method public getMP3AudioHeader()Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    return-object v0
.end method

.method public getMP3StartByte(Ljava/io/File;)J
    .locals 6

    .prologue
    .line 508
    :try_start_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v2

    .line 510
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    invoke-direct {v0, p1, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 511
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 513
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "First header found after tag:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v2, v3, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->checkAudioStart(JLorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;)Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    move-result-object v0

    .line 516
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    return-wide v0

    .line 518
    :catch_0
    move-exception v0

    throw v0

    .line 522
    :catch_1
    move-exception v0

    throw v0
.end method

.method public hasID3v1Tag()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasID3v2Tag()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public precheck(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 937
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 940
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 951
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_2
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->save(Ljava/io/File;)V

    .line 906
    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 967
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    .line 969
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, v3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->precheck(Ljava/io/File;)V

    .line 974
    const/4 v2, 0x0

    .line 978
    :try_start_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v2Save()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-nez v0, :cond_3

    .line 982
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 983
    :try_start_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 984
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 985
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 986
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Deleting ID3v2 tag:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1002
    :cond_0
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1005
    :try_start_3
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isLyrics3Save()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->lyrics3tag:Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->lyrics3tag:Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;->write(Ljava/io/RandomAccessFile;)V

    .line 1013
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isId3v1Save()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Processing ID3v1"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-nez v0, :cond_5

    .line 1018
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Deleting ID3v1"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1045
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1050
    return-void

    .line 991
    :cond_3
    :try_start_4
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Writing ID3v2 tag:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;

    .line 993
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    .line 994
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v1, v3, v4, v5}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->write(Ljava/io/File;J)J

    move-result-wide v6

    .line 995
    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 996
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New mp3 start byte: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, v6, v7}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1028
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1030
    :goto_2
    :try_start_5
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1031
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1044
    :catchall_0
    move-exception v0

    .line 1045
    :goto_3
    if-eqz v1, :cond_4

    .line 1047
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1049
    :cond_4
    throw v0

    .line 1023
    :cond_5
    :try_start_6
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Saving ID3v1"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1028
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1033
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 1035
    :goto_4
    :try_start_7
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    throw v0

    .line 1038
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 1040
    :goto_5
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1041
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1044
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1038
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 1033
    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 1028
    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method public setID3v1Tag(Lorg/FiioGetMusicInfo/tag/Tag;)V
    .locals 2

    .prologue
    .line 632
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 633
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 634
    return-void
.end method

.method public setID3v1Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 2

    .prologue
    .line 646
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:abstract"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 647
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 648
    return-void
.end method

.method public setID3v1Tag(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V
    .locals 2

    .prologue
    .line 626
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 627
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v1tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 628
    return-void
.end method

.method public setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .prologue
    .line 792
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 793
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    goto :goto_0
.end method

.method public setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 1

    .prologue
    .line 779
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 781
    return-void
.end method

.method public setID3v2TagOnly(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .prologue
    .line 812
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 814
    return-void
.end method

.method public setTag(Lorg/FiioGetMusicInfo/tag/Tag;)V
    .locals 1

    .prologue
    .line 1114
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    .line 1115
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    .line 1117
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->setID3v1Tag(Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;)V

    .line 1123
    :goto_0
    return-void

    .line 1121
    :cond_0
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->setID3v2Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    goto :goto_0
.end method
