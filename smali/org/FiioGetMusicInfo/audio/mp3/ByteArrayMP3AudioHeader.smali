.class public Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;
.super Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;
.source "ByteArrayMP3AudioHeader.java"


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;-><init>()V

    .line 16
    const-wide/16 v2, 0x0

    .line 19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 21
    const/4 v0, 0x0

    .line 24
    :cond_0
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    :try_start_0
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    move-result-object v4

    iput-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    .line 30
    const/4 v0, 0x1

    .line 31
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-static {v1, v4}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_2

    .line 36
    :try_start_1
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->mp3XingFrame:Lorg/FiioGetMusicInfo/audio/mp3/XingFrame;
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :cond_1
    :goto_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setFileSize(J)V

    .line 75
    invoke-virtual {p0, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setMp3StartByte(J)V

    .line 76
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setTimePerFrame()V

    .line 77
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setNumberOfFrames()V

    .line 78
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setTrackLength()V

    .line 79
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setBitRate()V

    .line 80
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->setEncoder()V

    .line 81
    return-void

    .line 55
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->isNextFrameValid(Ljava/nio/ByteBuffer;)Z
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 72
    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private isNextFrameValid(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp3/ByteArrayMP3AudioHeader;->mp3FrameHeader:Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/mp3/MPEGFrameHeader;

    .line 94
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame confirms is an audio header "

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    return v0

    .line 99
    :catch_0
    move-exception v2

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Check next frame has identified this is not an audio header"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method
