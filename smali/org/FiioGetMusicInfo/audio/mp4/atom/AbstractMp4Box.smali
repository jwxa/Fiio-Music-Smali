.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.super Ljava/lang/Object;
.source "AbstractMp4Box.java"


# instance fields
.field protected dataBuffer:Ljava/nio/ByteBuffer;

.field protected header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    return-object v0
.end method
