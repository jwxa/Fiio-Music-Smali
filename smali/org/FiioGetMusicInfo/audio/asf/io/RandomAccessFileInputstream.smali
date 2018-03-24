.class public final Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;
.super Ljava/io/InputStream;
.source "RandomAccessFileInputstream.java"


# instance fields
.field private final source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    .line 32
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    const-wide/32 v2, 0x7fffffff

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid negative value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 62
    sub-long/2addr p1, v2

    .line 60
    :cond_1
    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileInputstream;->source:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
