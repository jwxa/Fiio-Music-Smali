.class public interface abstract Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;
.super Ljava/lang/Object;
.source "AudioFileModificationListener.java"


# virtual methods
.method public abstract fileModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Ljava/io/File;)V
.end method

.method public abstract fileOperationFinished(Ljava/io/File;)V
.end method

.method public abstract fileWillBeModified(Lorg/FiioGetMusicInfo/audio/AudioFile;Z)V
.end method

.method public abstract vetoThrown(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;Lorg/FiioGetMusicInfo/audio/AudioFile;Lorg/FiioGetMusicInfo/audio/exceptions/ModifyVetoException;)V
.end method
