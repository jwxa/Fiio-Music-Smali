.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;
.super Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;
.source "Mp4TagTextNumberField.java"


# static fields
.field public static final NUMBER_LENGTH:I = 0x2


# instance fields
.field protected numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 104
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->dataSize:I

    .line 106
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->content:Ljava/lang/String;

    .line 107
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 108
    return-void
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 85
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->content:Ljava/lang/String;

    .line 88
    check-cast p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->getNumbers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 90
    :cond_0
    return-void
.end method

.method protected getDataBytes()[B
    .locals 3

    .prologue
    .line 67
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 72
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt16(S)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

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
    .line 115
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    return-object v0
.end method
