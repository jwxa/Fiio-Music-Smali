.class public Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "FlacFileReader.java"


# instance fields
.field private ir:Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;

.field private tr:Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->ir:Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;

    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->ir:Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->ir:Lorg/FiioGetMusicInfo/audio/flac/FlacInfoReader;

    .line 54
    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->tr:Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;

    .line 60
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->tr:Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;->tr:Lorg/FiioGetMusicInfo/audio/flac/FlacTagReader;

    .line 62
    return-object v0
.end method
