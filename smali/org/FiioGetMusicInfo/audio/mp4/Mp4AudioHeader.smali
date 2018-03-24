.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;
.super Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
.source "Mp4AudioHeader.java"


# instance fields
.field private brand:Ljava/lang/String;

.field private kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private profile:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object v0
.end method

.method public getProfile()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->profile:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->brand:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setKind(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 19
    return-void
.end method

.method public setProfile(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->profile:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 37
    return-void
.end method
