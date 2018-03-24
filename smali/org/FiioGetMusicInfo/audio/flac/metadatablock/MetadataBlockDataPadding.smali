.class public Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;
.super Ljava/lang/Object;
.source "MetadataBlockDataPadding.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    .line 37
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    new-array v2, v0, [B

    move v0, v1

    .line 42
    :goto_0
    iget v3, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    if-lt v0, v3, :cond_0

    .line 46
    return-object v2

    .line 44
    :cond_0
    aput-byte v1, v2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    return v0
.end method
