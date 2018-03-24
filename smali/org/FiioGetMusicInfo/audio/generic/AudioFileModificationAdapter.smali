.class public Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationAdapter;
.super Ljava/lang/Object;
.source "AudioFileModificationAdapter.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public fileWillBeModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Z)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
