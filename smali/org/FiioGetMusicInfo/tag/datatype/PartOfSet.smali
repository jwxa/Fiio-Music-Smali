.class public Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;
.source "PartOfSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 57
    if-ne p1, p0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 62
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;

    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;

    .line 69
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v0

    .line 182
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getCharsetForId(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 183
    sget-object v2, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->logger:Ljava/util/logging/Logger;

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

    .line 184
    return-object v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->getValue()Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    return-object v0
.end method

.method public readByteArray([BI)V
    .locals 6

    .prologue
    .line 88
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading from array from offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 94
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, p2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    sget-object v3, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decoding error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 103
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 106
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    .line 110
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->setSize(I)V

    .line 111
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read SizeTerminatedString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->getValue()Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    :try_start_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isRemoveTrailingTerminatorOnWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->getTextEncodingCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 143
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0xfeff

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_0
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 155
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 157
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    array-length v0, v1

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->setSize(I)V

    .line 169
    return-object v1

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
