.class public Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyUnsupported.java"


# instance fields
.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 71
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->read(Ljava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 50
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 60
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 109
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;

    if-nez v0, :cond_0

    move v0, v1

    .line 116
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 114
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;

    .line 116
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "ZZZ"

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 94
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;

    .line 96
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 97
    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 127
    new-array v0, v2, [B

    .line 130
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 131
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 136
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 137
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x5

    new-array v2, v0, [B

    .line 157
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 159
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    if-lt v0, v4, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x0

    .line 166
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 171
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 173
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 174
    return-void

    .line 161
    :cond_0
    const/16 v4, 0x30

    aput-byte v4, v2, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    add-int v4, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
