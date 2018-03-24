.class public Lorg/eclipse/jetty/io/ByteArrayBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "ByteArrayBuffer.java"


# instance fields
.field protected final _bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 72
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 73
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 38
    new-array v1, p1, [B

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 78
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 79
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 81
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 102
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 104
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 105
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 88
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 89
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 91
    if-eqz p2, :cond_0

    .line 93
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 94
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 44
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 49
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 54
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 55
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 57
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 58
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 64
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 66
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 67
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    .line 124
    :goto_0
    if-lez v0, :cond_3

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    .line 127
    if-lez v1, :cond_1

    .line 129
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 133
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 135
    :cond_3
    return-void

    .line 123
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v0, :cond_3

    .line 148
    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 151
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 154
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_4
    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v3, :cond_5

    instance-of v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v3, :cond_5

    .line 160
    check-cast p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 161
    iget v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v4, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v4, :cond_5

    move v0, v2

    .line 162
    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 167
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 168
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_7

    .line 170
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v7, v3, v4

    .line 171
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v5

    .line 172
    if-eq v7, v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v5, v3

    move v3, v4

    .line 173
    goto :goto_1

    :cond_7
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/4 v2, 0x0

    .line 181
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 191
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 192
    iget v3, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v0, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 197
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    .line 198
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v7

    .line 199
    if-nez v7, :cond_7

    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 204
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 205
    if-eq v3, v0, :cond_6

    .line 207
    if-gt v8, v3, :cond_4

    if-gt v3, v9, :cond_4

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 208
    :cond_4
    if-gt v8, v0, :cond_5

    if-gt v0, v9, :cond_5

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 209
    :cond_5
    if-eq v3, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v4

    .line 211
    goto :goto_1

    .line 215
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 218
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v7, v5

    .line 219
    if-eq v3, v0, :cond_a

    .line 221
    if-gt v8, v3, :cond_8

    if-gt v3, v9, :cond_8

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 222
    :cond_8
    if-gt v8, v0, :cond_9

    if-gt v0, v9, :cond_9

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 223
    :cond_9
    if-eq v3, v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 225
    goto :goto_2

    :cond_b
    move v0, v1

    .line 227
    goto/16 :goto_0
.end method

.method public get()B
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 239
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    if-eq v0, v1, :cond_4

    .line 241
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_2

    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, v1

    .line 245
    const/16 v3, 0x61

    if-gt v3, v0, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 246
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 247
    :cond_1
    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    move v0, v1

    .line 248
    goto :goto_0

    .line 249
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-nez v0, :cond_3

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 251
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    .line 252
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    .line 254
    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    return v0
.end method

.method public peek(I)B
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 265
    .line 266
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 269
    if-nez v1, :cond_2

    .line 277
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 273
    :cond_2
    if-ltz v1, :cond_0

    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v0, p1, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 297
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 306
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 307
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 316
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    .line 317
    if-eqz v2, :cond_2

    .line 318
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v2, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    :cond_1
    return v0

    .line 321
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 322
    :goto_0
    if-ge v1, v0, :cond_1

    .line 323
    iget-object v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v5, p1

    .line 322
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 341
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    return p4
.end method

.method public poke(IB)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 292
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 368
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 370
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    move v0, p2

    move v3, v1

    .line 373
    :cond_2
    if-ge v1, p2, :cond_4

    .line 375
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 376
    if-ltz v3, :cond_4

    .line 377
    if-lez v3, :cond_3

    .line 380
    add-int/2addr v2, v3

    .line 381
    add-int/2addr v1, v3

    .line 382
    sub-int/2addr v0, v3

    .line 383
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 385
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_4
    move v0, v1

    move v1, v3

    .line 386
    if-gez v1, :cond_5

    if-nez v0, :cond_5

    .line 389
    const/4 v0, -0x1

    .line 390
    :cond_5
    return v0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 362
    :cond_0
    return-void
.end method
