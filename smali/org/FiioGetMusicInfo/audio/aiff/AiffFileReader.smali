.class public Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "AiffFileReader.java"


# instance fields
.field private im:Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;

.field private ir:Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;->ir:Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;->im:Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;

    .line 14
    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;->ir:Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;->im:Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;

    move-result-object v0

    return-object v0
.end method
