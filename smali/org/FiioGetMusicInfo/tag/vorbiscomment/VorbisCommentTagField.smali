.class public Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;
.super Ljava/lang/Object;
.source "VorbisCommentTagField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# static fields
.field private static final ERRONEOUS_ID:Ljava/lang/String; = "ERRONEOUS"


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->checkCommon()V

    .line 107
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 73
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 74
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    const-string v1, "ERRONEOUS"

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 93
    :goto_0
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->checkCommon()V

    .line 94
    return-void

    .line 82
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCommon()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKNUMBER:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->DATE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->DESCRIPTION:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COMMENT:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->common:Z

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected copy([B[BI)V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-void
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 145
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 172
    new-array v0, v8, [B

    .line 173
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->id:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 174
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 175
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 177
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    .line 178
    const/4 v5, 0x3

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 179
    const/4 v5, 0x2

    const/high16 v6, 0xff0000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 180
    const/4 v5, 0x1

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 181
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 183
    invoke-virtual {p0, v0, v3, v7}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 185
    invoke-virtual {p0, v1, v3, v8}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 187
    array-length v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 188
    const/16 v1, 0x3d

    aput-byte v1, v3, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    invoke-virtual {p0, v2, v3, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->copy([B[BI)V

    .line 192
    return-object v3
.end method

.method public isBinary(Z)V
    .locals 2

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OggTagFields cannot be changed to binary.\nbinary data should be stored elsewhere according to Vorbis_I_spec."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->content:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 232
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The encoding of OggTagFields cannot be changed.(specified to be UTF-8)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
