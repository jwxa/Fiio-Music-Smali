.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;
.source "AbstractTag.java"


# static fields
.field protected static final TYPE_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;)V

    .line 46
    return-void
.end method


# virtual methods
.method public abstract delete(Ljava/io/RandomAccessFile;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract seek(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract write(Ljava/io/RandomAccessFile;)V
.end method
