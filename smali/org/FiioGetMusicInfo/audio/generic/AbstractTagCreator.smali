.class public abstract Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;
.super Ljava/lang/Object;
.source "AbstractTagCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;->convert(Lorg/FiioGetMusicInfo/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract convert(Lorg/FiioGetMusicInfo/tag/Tag;I)Ljava/nio/ByteBuffer;
.end method
