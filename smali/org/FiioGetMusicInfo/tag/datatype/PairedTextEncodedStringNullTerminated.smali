.class public Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "PairedTextEncodedStringNullTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 24
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 30
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$0(Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 74
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    if-ne p1, p0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 45
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    return-object v0
.end method

.method public readByteArray([BI)V
    .locals 5

    .prologue
    .line 94
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading PairTextEncodedStringNullTerminated from array from offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 101
    :goto_0
    :try_start_0
    new-instance v4, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-direct {v4, v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 102
    invoke-virtual {v4, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 103
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 104
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v0

    add-int/2addr v0, p2

    .line 105
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read  PairTextEncodedStringNullTerminated:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 157
    return-void

    .line 113
    :cond_1
    :try_start_1
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-direct {v2, v1, v3}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 114
    invoke-virtual {v2, p1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 115
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 116
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    add-int v3, v0, v1

    .line 117
    :try_start_2
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    if-nez v0, :cond_2

    .line 152
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string v1, "No null terminated Strings found"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    const-string v1, "No null terminated Strings found"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 132
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-direct {v2, v1, v3}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 133
    invoke-virtual {v2, p1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->readByteArray([BI)V

    .line 134
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 135
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    .line 136
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 145
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v0

    move v0, v3

    goto :goto_2

    :cond_2
    move p2, v3

    goto/16 :goto_0
.end method

.method public writeByteArray()[B
    .locals 8

    .prologue
    .line 167
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing PairTextEncodedStringNullTerminated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    .line 170
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->value:Ljava/lang/Object;

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$0(Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->size:I

    .line 197
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    const-string v1, "Written PairTextEncodedStringNullTerminated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 176
    new-instance v4, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 178
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 181
    new-instance v4, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;->getSize()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
