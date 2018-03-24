.class public Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4DataBox.java"


# static fields
.field public static final DATA_HEADER_LENGTH:I = 0x10

.field public static final IDENTIFIER:Ljava/lang/String; = "data"

.field public static final NULL_LENGTH:I = 0x4

.field public static final NUMBER_LENGTH:I = 0x2

.field public static final PRE_DATA_LENGTH:I = 0x8

.field public static final TYPE_LENGTH:I = 0x3

.field public static final TYPE_POS:I = 0x1

.field public static final TYPE_POS_INCLUDING_HEADER:I = 0x9

.field public static final VERSION_LENGTH:I = 0x1


# instance fields
.field private bytedata:[B

.field private content:Ljava/lang/String;

.field private numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 54
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 58
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to process data box because identifier is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    .line 69
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 71
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 77
    :goto_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_4

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 86
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_4
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    move-result v1

    .line 80
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 89
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 96
    :cond_6
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    .line 104
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 105
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    .line 112
    :goto_3
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    move-result v1

    .line 115
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 119
    :cond_7
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getByteData()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->type:I

    return v0
.end method
