.class public Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "WavFileReader.java"


# instance fields
.field private ir:Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;

.field private iw:Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->ir:Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;

    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->ir:Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->ir:Lorg/FiioGetMusicInfo/audio/wav/WavInfoReader;

    .line 55
    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->iw:Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;

    .line 62
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->iw:Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/wav/WavTag;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;->iw:Lorg/FiioGetMusicInfo/audio/wav/WavTagReader;

    .line 64
    return-object v0
.end method
