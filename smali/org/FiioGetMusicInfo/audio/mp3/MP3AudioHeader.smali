.class public Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;
.super Ljava/lang/Object;
.source "MP3AudioHeader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/AudioHeader;


# static fields
.field private static final CONVERTS_BYTE_TO_BITS:I = 0x8

.field private static final CONVERT_TO_KILOBITS:I = 0x3e8

.field private static final FILE_BUFFER_SIZE:I = 0x1388

.field private static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field private static final NO_SECONDS_IN_HOUR:I = 0xe10

.field private static final TYPE_MP3:Ljava/lang/String; = "mp3"

.field private static final isVbrIdentifier:C = '~'

.field public static logger:Ljava/util/logging/Logger;

.field private static final timeInFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitrate:J

.field private encoder:Ljava/lang/String;

.field private fileSize:J

.field protected mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

.field protected mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

.field protected mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

.field private numberOfFrames:J

.field private numberOfFramesEstimate:J

.field private startByte:J

.field private timePerFrame:D

.field private trackLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    .line 88
    const-string v0, "org.FiioGetMusicInfo.audio.mp3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 114
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No audio header found within"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 6

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NO_AUDIO_HEADER_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method private getTimePerFrame()D
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    return-wide v0
.end method

.method private isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 339
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking next frame"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":fpc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "skipping to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 350
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    const/16 v3, 0x12c4

    if-le v2, v3, :cond_1

    .line 352
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Frame size is too large to be a frame:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 405
    :goto_0
    return v1

    .line 357
    :cond_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    add-int/lit16 v3, v3, 0xc4

    if-gt v2, v3, :cond_4

    .line 359
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer too small, need to reload, buffer size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 361
    invoke-virtual {p5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 362
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {p5, p4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 363
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v2, 0xc4

    if-gt v0, v2, :cond_2

    .line 370
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Nearly at end of file, no header found:"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    add-int/lit16 v2, v2, 0xc4

    if-gt v0, v2, :cond_3

    .line 378
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Nearly at end of file, no room for next frame, no header found:"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 384
    :cond_4
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 385
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 389
    :try_start_0
    invoke-static {p4}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    .line 390
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame confirms is an audio header "

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    const/4 v1, 0x1

    .line 404
    :goto_1
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame has identified this is not an audio header"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 401
    :cond_5
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "isMPEGFrame has identified this is not an audio header"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 847
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0x7e

    .line 641
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_1
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .prologue
    .line 670
    const/16 v0, 0x10

    return v0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getChannelModeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmphasis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const-string v0, "mp3"

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMp3StartByte()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    return-wide v0
.end method

.method public getMpegLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 465
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    return-wide v0
.end method

.method public getNumberOfFramesEstimate()J
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    return-wide v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->trackLength:D

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getTrackLengthAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 542
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getTrackLength()I

    move-result v0

    int-to-long v0, v0

    .line 543
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :try_start_1
    sget-object v3, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 543
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    const-wide/16 v4, 0xe10

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 550
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 552
    :try_start_3
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    :goto_0
    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with ParseException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 566
    const-string v0, ""

    goto :goto_0

    .line 550
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0

    .line 557
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    .line 559
    :try_start_6
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 557
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public isCopyrighted()Z
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isCopyrighted()Z

    move-result v0

    return v0
.end method

.method public isLossless()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPadding()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isPadding()Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isPrivate()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isProtected()Z

    move-result v0

    return v0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    .line 736
    :goto_0
    return v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->isVbr()Z

    move-result v0

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    move-result v0

    goto :goto_0
.end method

.method public seek(Ljava/io/File;J)Z
    .locals 10

    .prologue
    .line 163
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 167
    const/16 v0, 0x1388

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 170
    invoke-virtual {v5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 176
    invoke-virtual {v5, v4, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 177
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 179
    const/4 v0, 0x0

    move-wide v2, p2

    .line 187
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v6, 0xc4

    if-gt v1, v6, :cond_1

    .line 189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v5, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 191
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    invoke-virtual {v5, v4, v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 192
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v6, 0xc4

    if-gt v1, v6, :cond_1

    .line 296
    if-eqz v5, :cond_0

    .line 298
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 301
    :cond_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 196
    const/4 v0, 0x0

    .line 324
    :goto_1
    return v0

    .line 200
    :cond_1
    :try_start_1
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Found Possible header at:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 209
    :cond_2
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    const/4 v6, 0x1

    .line 213
    :try_start_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-static {v4, v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 215
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v8, "Found Possible XingHeader"

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :cond_3
    :try_start_4
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    .line 296
    :goto_2
    if-eqz v5, :cond_4

    .line 298
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 301
    :cond_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 308
    :goto_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Return found matching mp3 header starting at"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 312
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    .line 313
    invoke-virtual {p0, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 314
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    .line 315
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    .line 316
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setTrackLength()V

    .line 317
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setBitRate()V

    .line 318
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->setEncoder()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v6

    .line 229
    goto :goto_2

    .line 231
    :cond_6
    :try_start_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-static {v4, v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->isVbriFrame(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 233
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v8, "Found Possible VbriHeader"

    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :cond_7
    :try_start_6
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->parseVBRIFrame(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v6

    .line 241
    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v6

    .line 247
    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    .line 259
    :try_start_7
    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    :try_end_7
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v6

    .line 260
    if-eqz v6, :cond_a

    move v0, v6

    .line 262
    goto :goto_2

    :catch_2
    move-exception v1

    :cond_9
    :goto_4
    move v6, v0

    .line 276
    :cond_a
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 281
    if-eqz v6, :cond_d

    move v0, v6

    .line 282
    goto/16 :goto_2

    .line 283
    :catch_3
    move-exception v0

    .line 285
    :try_start_9
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Reached end of file without finding sync match"

    invoke-virtual {v1, v4, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 286
    const/4 v0, 0x0

    .line 296
    if-eqz v5, :cond_b

    .line 298
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 301
    :cond_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_3

    .line 288
    :catch_4
    move-exception v0

    .line 290
    :try_start_a
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IOException occurred whilst trying to find sync"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    if-eqz v5, :cond_c

    .line 298
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 301
    :cond_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 305
    throw v0

    :catch_5
    move-exception v0

    move v0, v6

    goto :goto_4

    :cond_d
    move v0, v6

    goto/16 :goto_0
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    .line 870
    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    .line 859
    return-void
.end method

.method protected setBitRate()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x8

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 584
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isAudioSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    .line 610
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 599
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 603
    :cond_2
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 608
    :cond_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0
.end method

.method protected setEncoder()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->getLameFrame()Lorg/FiioGetMusicInfo/audio/mp3/LameFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->getLameFrame()Lorg/FiioGetMusicInfo/audio/mp3/LameFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/LameFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setFileSize(J)V
    .locals 1

    .prologue
    .line 785
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->fileSize:J

    .line 786
    return-void
.end method

.method protected setMp3StartByte(J)V
    .locals 1

    .prologue
    .line 415
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    .line 416
    return-void
.end method

.method protected setNumberOfFrames()V
    .locals 4

    .prologue
    .line 437
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 439
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isFrameCountEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    .line 452
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    .line 449
    :cond_1
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0
.end method

.method protected setTimePerFrame()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 483
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 487
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 491
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getNumberOfChannels()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 493
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 497
    :cond_2
    return-void
.end method

.method protected setTrackLength()V
    .locals 4

    .prologue
    .line 516
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    long-to-double v0, v0

    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getTimePerFrame()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->trackLength:D

    .line 517
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string v1, " encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string v1, " startByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->startByte:J

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string v1, " numberOfFrames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    const-string v1, " numberOfFramesEst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    const-string v1, " timePerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 800
    const-string v1, " bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 801
    const-string v1, " trackLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->getTrackLengthAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    if-eqz v1, :cond_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    :goto_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    if-eqz v1, :cond_1

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    :goto_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    if-eqz v1, :cond_2

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp3/VbriFrame;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    :goto_2
    return-object v0

    .line 809
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mpegframeheader:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mp3XingFrame:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 827
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mp3VbriFrame:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
