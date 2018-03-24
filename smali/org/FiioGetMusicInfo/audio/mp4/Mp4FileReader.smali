.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "Mp4FileReader.java"


# instance fields
.field private ir:Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;

.field private tr:Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->ir:Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;

    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->ir:Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->ir:Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;

    .line 46
    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->tr:Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;

    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->tr:Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->tr:Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;

    .line 54
    return-object v0
.end method
