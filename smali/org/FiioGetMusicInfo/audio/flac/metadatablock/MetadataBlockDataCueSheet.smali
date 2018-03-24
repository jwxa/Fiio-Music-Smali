.class public Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataCueSheet;
.super Ljava/lang/Object;
.source "MetadataBlockDataCueSheet.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:[B

    .line 39
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:[B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 40
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:[B

    array-length v0, v0

    return v0
.end method
