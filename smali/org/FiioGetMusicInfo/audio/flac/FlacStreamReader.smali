.class public Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;
.super Ljava/lang/Object;
.source "FlacStreamReader.java"


# static fields
.field public static final FLAC_STREAM_IDENTIFIER:Ljava/lang/String; = "fLaC"

.field public static final FLAC_STREAM_IDENTIFIER_LENGTH:I = 0x4

.field public static ID3_INEED:Z

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private raf:Ljava/io/RandomAccessFile;

.field private startOfFlacInFile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "org.FiioGetMusicInfo.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    .line 38
    return-void
.end method

.method private isFlacHeader()Z
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 94
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 95
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 96
    const-string v0, "fLaC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isId3v2Tag()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->FLAC_CONTAINS_ID3TAG:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public findStream()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Error: File empty"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->isId3v2Tag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    .line 68
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->FLAC_NO_FLAC_HEADER_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartOfFlacInFile()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    return v0
.end method
