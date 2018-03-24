.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTXXX.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final ACOUSTID_FINGERPRINT:Ljava/lang/String; = "Acoustid Fingerprint"

.field public static final ACOUSTID_ID:Ljava/lang/String; = "Acoustid Id"

.field public static final ALBUM_ARTIST:Ljava/lang/String; = "ALBUM ARTIST"

.field public static final AMAZON_ASIN:Ljava/lang/String; = "ASIN"

.field public static final ARTISTS:Ljava/lang/String; = "ARTISTS"

.field public static final BARCODE:Ljava/lang/String; = "BARCODE"

.field public static final CATALOG_NO:Ljava/lang/String; = "CATALOGNUMBER"

.field public static final COUNTRY:Ljava/lang/String; = "Country"

.field public static final FBPM:Ljava/lang/String; = "FBPM"

.field public static final MOOD:Ljava/lang/String; = "MOOD"

.field public static final MUSICBRAINZ_ALBUMID:Ljava/lang/String; = "MusicBrainz Album Id"

.field public static final MUSICBRAINZ_ALBUM_ARTISTID:Ljava/lang/String; = "MusicBrainz Album Artist Id"

.field public static final MUSICBRAINZ_ALBUM_COUNTRY:Ljava/lang/String; = "MusicBrainz Album Release Country"

.field public static final MUSICBRAINZ_ALBUM_STATUS:Ljava/lang/String; = "MusicBrainz Album Status"

.field public static final MUSICBRAINZ_ALBUM_TYPE:Ljava/lang/String; = "MusicBrainz Album Type"

.field public static final MUSICBRAINZ_ARTISTID:Ljava/lang/String; = "MusicBrainz Artist Id"

.field public static final MUSICBRAINZ_DISCID:Ljava/lang/String; = "MusicBrainz Disc Id"

.field public static final MUSICBRAINZ_ORIGINAL_ALBUMID:Ljava/lang/String; = "MusicBrainz Original Album Id"

.field public static final MUSICBRAINZ_RELEASE_GROUPID:Ljava/lang/String; = "MusicBrainz Release Group Id"

.field public static final MUSICBRAINZ_RELEASE_TRACKID:Ljava/lang/String; = "MusicBrainz Release Track Id"

.field public static final MUSICBRAINZ_WORKID:Ljava/lang/String; = "MusicBrainz Work Id"

.field public static final MUSICIP_ID:Ljava/lang/String; = "MusicIP PUID"

.field public static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field public static final SCRIPT:Ljava/lang/String; = "Script"

.field public static final TAGS:Ljava/lang/String; = "TAGS"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 89
    const-string v0, "TextEncoding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "Description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "Text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 121
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "Description"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "Text"

    invoke-virtual {p0, v0, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTMOO;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 101
    const-string v0, "TextEncoding"

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTMOO;->getTextEncoding()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "TextEncoding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "Description"

    const-string v1, "MOOD"

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "Text"

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTMOO;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "TXXX"

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getTextEncoding()B

    move-result v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setTextEncoding(B)V

    .line 175
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setTextEncoding(B)V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 180
    return-void
.end method
