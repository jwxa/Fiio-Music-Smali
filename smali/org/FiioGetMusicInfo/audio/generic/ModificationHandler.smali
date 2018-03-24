.class public Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;
.super Ljava/lang/Object;
.source "ModificationHandler.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;


# instance fields
.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    .line 33
    return-void
.end method


# virtual methods
.method public addAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public fileModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 62
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;

    .line 67
    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;->fileModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V

    .line 72
    throw v1
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;

    .line 86
    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    goto :goto_0
.end method

.method public fileWillBeModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Z)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;

    .line 104
    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Z)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V

    .line 109
    throw v1
.end method

.method public removeAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 136
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;

    .line 138
    invoke-interface {v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;->vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V

    goto :goto_0
.end method
