.class public Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;
.super Ljava/lang/Object;
.source "StandardArtwork.java"

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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->description:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->isLinked:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->pictureType:I

    .line 31
    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;-><init>()V

    .line 176
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setFromFile(Ljava/io/File;)V

    .line 177
    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;-><init>()V

    .line 219
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    .line 220
    return-object v0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;-><init>()V

    .line 183
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setLinkedFromURL(Ljava/lang/String;)V

    .line 184
    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->binaryData:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->height:I

    return v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->getBinaryData()[B

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->pictureType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->width:I

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->isLinked:Z

    return v0
.end method

.method public setBinaryData([B)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->binaryData:[B

    .line 40
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->description:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 144
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 145
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 147
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setBinaryData([B)V

    .line 148
    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setMimeType(Ljava/lang/String;)V

    .line 149
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setDescription(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setPictureType(I)V

    .line 151
    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setMimeType(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setDescription(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setPictureType(I)V

    .line 197
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setLinked(Z)V

    .line 200
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setImageUrl(Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setWidth(I)V

    .line 207
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setHeight(I)V

    .line 208
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setBinaryData([B)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->height:I

    .line 231
    return-void
.end method

.method public setImageFromData()Z
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->getImage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setWidth(I)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setHeight(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLinked(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->isLinked:Z

    .line 112
    return-void
.end method

.method public setLinkedFromURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setLinked(Z)V

    .line 162
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->setImageUrl(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPictureType(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->pictureType:I

    .line 132
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->width:I

    .line 226
    return-void
.end method
