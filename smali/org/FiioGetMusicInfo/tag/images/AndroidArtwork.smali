.class public Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;
.super Ljava/lang/Object;
.source "AndroidArtwork.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/images/Artwork;


# instance fields
.field private binaryData:[B

.field private description:Ljava/lang/String;

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private isLinked:Z

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->isLinked:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->pictureType:I

    .line 28
    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;-><init>()V

    .line 143
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setFromFile(Ljava/io/File;)V

    .line 144
    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;-><init>()V

    .line 205
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    .line 206
    return-object v0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;-><init>()V

    .line 156
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setLinkedFromURL(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->binaryData:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->height:I

    return v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->pictureType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->width:I

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->isLinked:Z

    return v0
.end method

.method public setBinaryData([B)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->binaryData:[B

    .line 37
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 124
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 125
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 127
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setBinaryData([B)V

    .line 128
    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setMimeType(Ljava/lang/String;)V

    .line 129
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setDescription(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setPictureType(I)V

    .line 131
    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setMimeType(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setDescription(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setPictureType(I)V

    .line 183
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setLinked(Z)V

    .line 186
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setImageUrl(Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setWidth(I)V

    .line 193
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setHeight(I)V

    .line 194
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setBinaryData([B)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->height:I

    .line 217
    return-void
.end method

.method public setImageFromData()Z
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setLinked(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->isLinked:Z

    .line 92
    return-void
.end method

.method public setLinkedFromURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setLinked(Z)V

    .line 169
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->setImageUrl(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPictureType(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->pictureType:I

    .line 112
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->width:I

    .line 212
    return-void
.end method
