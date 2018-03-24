.class public Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataApplication;
.super Ljava/lang/Object;
.source "MetadataBlockDataApplication.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    .line 40
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 41
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    array-length v0, v0

    return v0
.end method
