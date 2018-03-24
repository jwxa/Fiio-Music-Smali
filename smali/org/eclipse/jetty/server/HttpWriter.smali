.class public Lorg/eclipse/jetty/server/HttpWriter;
.super Ljava/io/Writer;
.source "HttpWriter.java"


# static fields
.field public static final MAX_OUTPUT_CHARS:I = 0x200

.field private static final WRITE_CONV:I = 0x0

.field private static final WRITE_ISO1:I = 0x1

.field private static final WRITE_UTF8:I = 0x2


# instance fields
.field final _generator:Lorg/eclipse/jetty/http/AbstractGenerator;

.field final _out:Lorg/eclipse/jetty/server/HttpOutput;

.field _surrogate:I

.field _writeMode:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/HttpOutput;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 56
    return-void
.end method

.method private getConverter()Ljava/io/Writer;
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v2, v2, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v3, v3, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    .line 86
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 93
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iput-object p1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v1, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 79
    :cond_2
    return-void

    .line 65
    :cond_3
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x200

    .line 99
    :goto_0
    if-le p3, v1, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jetty/server/HttpWriter;->write(Ljava/lang/String;II)V

    .line 102
    add-int/lit16 p2, p2, 0x200

    .line 103
    add-int/lit16 p3, p3, -0x200

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    .line 111
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 112
    invoke-virtual {p0, v0, v2, p3}, Lorg/eclipse/jetty/server/HttpWriter;->write([CII)V

    .line 113
    return-void
.end method

.method public write([CII)V
    .locals 10

    .prologue
    .line 119
    iget-object v6, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    move v1, p3

    .line 121
    :goto_0
    if-lez v1, :cond_10

    .line 123
    iget-object v0, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    .line 124
    const/16 v0, 0x200

    if-le v1, v0, :cond_0

    const/16 v0, 0x200

    .line 126
    :goto_1
    iget v2, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    packed-switch v2, :pswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 124
    goto :goto_1

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/HttpWriter;->getConverter()Ljava/io/Writer;

    move-result-object v2

    .line 131
    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 132
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 288
    :cond_1
    :goto_2
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 289
    sub-int/2addr v1, v0

    .line 290
    add-int/2addr p2, v0

    .line 291
    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v7

    .line 139
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    .line 141
    array-length v2, v7

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    .line 142
    array-length v0, v7

    sub-int/2addr v0, v3

    .line 144
    :cond_2
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_4

    .line 146
    add-int v2, p2, v3

    aget-char v2, p1, v2

    .line 147
    add-int/lit8 v5, v4, 0x1

    const/16 v8, 0x100

    if-ge v2, v8, :cond_3

    :goto_4
    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 144
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v5

    goto :goto_3

    .line 147
    :cond_3
    const/16 v2, 0x3f

    goto :goto_4

    .line 149
    :cond_4
    if-ltz v4, :cond_1

    .line 150
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 157
    :pswitch_2
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v7

    .line 158
    iget-object v2, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v4

    .line 160
    add-int v2, v4, v0

    array-length v3, v7

    if-le v2, v3, :cond_5

    .line 161
    array-length v0, v7

    sub-int/2addr v0, v4

    .line 163
    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_13

    .line 165
    add-int v3, p2, v2

    aget-char v3, p1, v3

    .line 168
    iget v5, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    if-nez v5, :cond_6

    .line 171
    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 173
    iput v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    move v3, v4

    .line 163
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_5

    .line 178
    :cond_6
    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 180
    iget v5, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    int-to-char v5, v5

    int-to-char v3, v3

    invoke-static {v5, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    move v5, v3

    move v3, v2

    .line 190
    :goto_7
    and-int/lit8 v2, v5, -0x80

    if-nez v2, :cond_a

    .line 193
    array-length v2, v7

    if-lt v4, v2, :cond_9

    .line 281
    :cond_7
    :goto_8
    iget-object v0, v6, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    move v0, v3

    .line 282
    goto/16 :goto_2

    .line 185
    :cond_8
    iget v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 186
    const/4 v5, 0x0

    iput v5, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 187
    add-int/lit8 v2, v2, -0x1

    move v5, v3

    move v3, v2

    goto :goto_7

    .line 198
    :cond_9
    add-int/lit8 v2, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_6

    .line 202
    :cond_a
    and-int/lit16 v2, v5, -0x800

    if-nez v2, :cond_b

    .line 205
    add-int/lit8 v2, v4, 0x2

    array-length v8, v7

    if-gt v2, v8, :cond_7

    .line 210
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v2, v5, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 211
    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v4, v5, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    .line 272
    :goto_9
    const/4 v4, 0x0

    iput v4, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 274
    array-length v4, v7

    if-ne v2, v4, :cond_11

    .line 276
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    .line 277
    goto :goto_8

    .line 213
    :cond_b
    const/high16 v2, -0x10000

    and-int/2addr v2, v5

    if-nez v2, :cond_c

    .line 216
    add-int/lit8 v2, v4, 0x3

    array-length v8, v7

    if-gt v2, v8, :cond_7

    .line 221
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 222
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 223
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    goto :goto_9

    .line 225
    :cond_c
    const/high16 v2, -0xe00000

    and-int/2addr v2, v5

    if-nez v2, :cond_d

    .line 228
    add-int/lit8 v2, v4, 0x4

    array-length v8, v7

    if-gt v2, v8, :cond_7

    .line 233
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 234
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 235
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 236
    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v4, v5, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    goto :goto_9

    .line 238
    :cond_d
    const/high16 v2, -0xc000000

    and-int/2addr v2, v5

    if-nez v2, :cond_e

    .line 241
    add-int/lit8 v2, v4, 0x5

    array-length v8, v7

    if-gt v2, v8, :cond_7

    .line 246
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0x18

    or-int/lit16 v8, v8, 0xf8

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 247
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 248
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 249
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 250
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    goto/16 :goto_9

    .line 252
    :cond_e
    const/high16 v2, -0x80000000

    and-int/2addr v2, v5

    if-nez v2, :cond_f

    .line 255
    add-int/lit8 v2, v4, 0x6

    array-length v8, v7

    if-gt v2, v8, :cond_7

    .line 260
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0x1e

    or-int/lit16 v8, v8, 0xfc

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 261
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0x18

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 262
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 263
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 264
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 265
    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v4, v5, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    goto/16 :goto_9

    .line 269
    :cond_f
    add-int/lit8 v2, v4, 0x1

    const/16 v5, 0x3f

    aput-byte v5, v7, v4

    goto/16 :goto_9

    .line 292
    :cond_10
    return-void

    :cond_11
    move v9, v3

    move v3, v2

    move v2, v9

    goto/16 :goto_6

    :cond_12
    move v5, v3

    move v3, v2

    goto/16 :goto_7

    :cond_13
    move v3, v0

    goto/16 :goto_8

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
