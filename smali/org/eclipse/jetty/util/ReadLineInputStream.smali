.class public Lorg/eclipse/jetty/util/ReadLineInputStream;
.super Ljava/io/BufferedInputStream;
.source "ReadLineInputStream.java"


# instance fields
.field _seenCRLF:Z

.field _skipLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 99
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 102
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 103
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    :cond_0
    monitor-exit p0

    return v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 114
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v1, :cond_1

    .line 116
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 117
    if-ne v1, v0, :cond_0

    .line 128
    :goto_0
    monitor-exit p0

    return v0

    .line 120
    :cond_0
    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 122
    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    :try_start_1
    aput-byte v0, p1, p2

    .line 123
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, -0x1

    invoke-super {p0, p1, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ReadLineInputStream;->mark(I)V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 52
    if-ne v0, v3, :cond_2

    .line 54
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 55
    iput v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 56
    iget v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    if-le v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    sub-int/2addr v3, v1

    sget-object v4, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 90
    :goto_1
    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 62
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 64
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    .line 67
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    iget v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->count:I

    if-ge v0, v2, :cond_4

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    aget-byte v0, v0, v2

    if-ne v0, v5, :cond_3

    .line 70
    iget v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    .line 74
    :cond_3
    :goto_2
    iget v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 75
    iput v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 76
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1

    .line 73
    :cond_4
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    goto :goto_2

    .line 79
    :cond_5
    if-ne v0, v5, :cond_0

    .line 81
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v0, :cond_6

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 84
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    .line 85
    iget v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    goto :goto_0

    .line 88
    :cond_6
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 89
    iput v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 90
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1
.end method
