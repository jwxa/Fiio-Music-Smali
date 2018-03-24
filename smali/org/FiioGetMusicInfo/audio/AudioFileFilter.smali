.class public Lorg/FiioGetMusicInfo/audio/AudioFileFilter;
.super Ljava/lang/Object;
.source "AudioFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final allowDirectories:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;-><init>(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;->allowDirectories:Z

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;->allowDirectories:Z

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 75
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method
