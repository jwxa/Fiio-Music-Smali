.class public Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;
.super Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
.source "FlacAudioHeader.java"


# instance fields
.field private md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/flac/FlacAudioHeader;->md5:Ljava/lang/String;

    .line 17
    return-void
.end method
