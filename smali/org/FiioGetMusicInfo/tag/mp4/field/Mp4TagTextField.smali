.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;
.super Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;
.source "Mp4TagTextField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# instance fields
.field protected content:Ljava/lang/String;

.field protected dataSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 87
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 88
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->dataSize:I

    .line 89
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 95
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataBytes()[B
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method
