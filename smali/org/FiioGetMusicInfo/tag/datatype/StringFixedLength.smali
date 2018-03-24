.class public Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;
.source "StringFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 52
    if-gez p3, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size is less than zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p0, p3}, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->setSize(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;)V

    .line 62
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;

    if-nez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;

    .line 76
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    iget v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 221
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 222
    sget-object v2, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "text encoding:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " charset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 223
    return-object v1
.end method

.method public readByteArray([BI)V
    .locals 4

    .prologue
    .line 87
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading from array from offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 94
    sget-object v1, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Array length is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offset is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 97
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-ge v1, v2, :cond_0

    .line 99
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte array is to small to retrieve string of declared length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    .line 113
    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read StringFixedLength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 114
    return-void

    .line 101
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-static {p1, p2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 133
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    const-string v2, "Value of StringFixedlength Field is null using default value instead"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    new-array v2, v0, [B

    move v0, v1

    .line 135
    :goto_0
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-lt v0, v1, :cond_1

    move-object v0, v2

    .line 211
    :cond_0
    :goto_1
    return-object v0

    .line 137
    :cond_1
    aput-byte v5, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 146
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const v0, 0xfeff

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 171
    :goto_2
    if-eqz v3, :cond_7

    .line 174
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-ne v0, v2, :cond_4

    .line 176
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 177
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 154
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception v0

    .line 160
    sget-object v2, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was a problem writing the following StringFixedlength Field:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "using default value instead"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 162
    :goto_3
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-ge v1, v2, :cond_0

    .line 164
    aput-byte v5, v0, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 181
    :cond_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-le v0, v2, :cond_5

    .line 183
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "There was a problem writing the following StringFixedlength Field:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when converted to bytes has length of:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but field was defined with length of:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " too long so stripping extra length"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 185
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 191
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "There was a problem writing the following StringFixedlength Field:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when converted to bytes has length of:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but field was defined with length of:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " too short so padding with spaces to make up extra length"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    new-array v2, v0, [B

    .line 194
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v3, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_4
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-lt v0, v1, :cond_6

    move-object v0, v2

    .line 200
    goto/16 :goto_1

    .line 198
    :cond_6
    aput-byte v5, v2, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 205
    :cond_7
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was a serious problem writing the following StringFixedlength Field:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":using default value instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    new-array v0, v0, [B

    .line 207
    :goto_5
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringFixedLength;->size:I

    if-ge v1, v2, :cond_0

    .line 209
    aput-byte v5, v0, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
