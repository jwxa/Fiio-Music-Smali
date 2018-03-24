.class public abstract Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;
.source "AbstractLyrics3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    .line 41
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    .line 53
    return-void
.end method
