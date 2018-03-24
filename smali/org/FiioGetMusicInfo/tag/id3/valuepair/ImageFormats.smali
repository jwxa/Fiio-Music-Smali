.class public Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;
.super Ljava/lang/Object;
.source "ImageFormats.java"


# static fields
.field public static final MIME_TYPE_BMP:Ljava/lang/String; = "image/bmp"

.field public static final MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final MIME_TYPE_PDF:Ljava/lang/String; = "image/pdf"

.field public static final MIME_TYPE_PICT:Ljava/lang/String; = "image/x-pict"

.field public static final MIME_TYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final MIME_TYPE_TIFF:Ljava/lang/String; = "image/tiff"

.field public static final V22_BMP_FORMAT:Ljava/lang/String; = "BMP"

.field public static final V22_GIF_FORMAT:Ljava/lang/String; = "GIF"

.field public static final V22_JPG_FORMAT:Ljava/lang/String; = "JPG"

.field public static final V22_PDF_FORMAT:Ljava/lang/String; = "PDF"

.field public static final V22_PIC_FORMAT:Ljava/lang/String; = "PIC"

.field public static final V22_PNG_FORMAT:Ljava/lang/String; = "PNG"

.field public static final V22_TIF_FORMAT:Ljava/lang/String; = "TIF"

.field private static imageFormatsToMimeType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static imageMimeTypeToFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    .line 69
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "JPG"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PNG"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "GIF"

    const-string v2, "image/gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "BMP"

    const-string v2, "image/bmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "TIF"

    const-string v2, "image/tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PDF"

    const-string v2, "image/pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PIC"

    const-string v2, "image/x-pict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    const-string v1, "image/jpg"

    const-string v2, "JPG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryDataIsBmpFormat([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x42

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x4d

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static binaryDataIsGifFormat([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x47

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x49

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x46

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static binaryDataIsJpgFormat([B)Z
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-ne v4, v2, :cond_0

    const/16 v2, 0xd8

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v4, v2, :cond_0

    const/16 v2, 0xdb

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static binaryDataIsPdfFormat([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x25

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x50

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x44

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x46

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static binaryDataIsPngFormat([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x89

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x50

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x4e

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x47

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static binaryDataIsTiffFormat([B)Z
    .locals 7

    .prologue
    const/16 v6, 0x2a

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    const/16 v2, 0x49

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_2

    const/16 v2, 0x49

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v6, v2, :cond_2

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_3

    .line 213
    :cond_2
    const/16 v2, 0x4d

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    const/16 v2, 0x4d

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v6, v2, :cond_0

    :cond_3
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public static getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getMimeTypeForBinarySignature([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "image/png"

    .line 260
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "image/gif"

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    const-string v0, "image/bmp"

    goto :goto_0

    .line 250
    :cond_3
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsPdfFormat([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    const-string v0, "image/pdf"

    goto :goto_0

    .line 254
    :cond_4
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsTiffFormat([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    const-string v0, "image/tiff"

    goto :goto_0

    .line 260
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isPortableFormat([B)Z
    .locals 1

    .prologue
    .line 224
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
