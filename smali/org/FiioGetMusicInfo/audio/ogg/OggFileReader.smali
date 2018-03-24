.class public Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "OggFileReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private ir:Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;

.field private vtr:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "org.FiioGetMusicInfo.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->ir:Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;

    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->ir:Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->ir:Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;

    .line 55
    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->vtr:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->vtr:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;->vtr:Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;

    .line 63
    return-object v0
.end method

.method public readOggPageHeader(Ljava/io/RandomAccessFile;I)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;
    .locals 4

    .prologue
    .line 81
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 82
    :goto_0
    if-gtz p2, :cond_0

    .line 88
    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 86
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public shortSummarizeOggPageHeaders(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 125
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    .line 138
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 141
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Raf File Pointer at:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "File Size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 143
    return-void

    .line 130
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pageHeader starts at absolute file position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 132
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pageHeader finishes at absolute file position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto/16 :goto_0
.end method

.method public summarizeOggPageHeaders(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Raf File Pointer at:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "File Size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 114
    return-void

    .line 106
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pageHeader starts at absolute file position:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v1

    .line 108
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pageHeader finishes at absolute file position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0
.end method
