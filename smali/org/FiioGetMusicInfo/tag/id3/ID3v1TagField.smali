.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;
.super Ljava/lang/Object;
.source "ID3v1TagField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->checkCommon()V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 49
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 53
    const-string v1, "ERRONEOUS"

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 69
    :goto_0
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->checkCommon()V

    .line 70
    return-void

    .line 58
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 61
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCommon()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->common:Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected copy([B[BI)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 118
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 122
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 145
    new-array v0, v8, [B

    .line 146
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 147
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 148
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 150
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    .line 151
    const/4 v5, 0x3

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 152
    const/4 v5, 0x2

    const/high16 v6, 0xff0000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 153
    const/4 v5, 0x1

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 154
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 156
    invoke-virtual {p0, v0, v3, v7}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 158
    invoke-virtual {p0, v1, v3, v8}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 160
    array-length v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 161
    const/16 v1, 0x3d

    aput-byte v1, v3, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-virtual {p0, v2, v3, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->copy([B[BI)V

    .line 165
    return-object v3
.end method

.method public isBinary(Z)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, ""

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1TagField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
