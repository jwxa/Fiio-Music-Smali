.class public Lorg/eclipse/jetty/io/BufferDateCache;
.super Lorg/eclipse/jetty/util/DateCache;
.source "BufferDateCache.java"


# instance fields
.field _buffer:Lorg/eclipse/jetty/io/Buffer;

.field _last:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/eclipse/jetty/util/DateCache;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized formatBuffer(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_last:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_last:Ljava/lang/String;

    .line 57
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
