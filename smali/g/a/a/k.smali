.class final Lg/a/a/k;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# instance fields
.field a:Lg/a/a/l;

.field b:Ljavax/net/ssl/SSLEngine;

.field c:Ljavax/net/ssl/SSLContext;

.field d:Lg/a/a/v;

.field e:Ljava/io/InputStream;

.field f:Ljava/io/InputStream;

.field g:Ljava/io/OutputStream;

.field h:Ljava/nio/channels/SocketChannel;

.field i:Ljava/nio/channels/SelectionKey;

.field j:Ljava/lang/String;

.field k:J

.field l:J

.field m:J

.field n:Z

.field o:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/k;->n:Z

    .line 55
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/k;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg/a/a/k;->n:Z

    .line 92
    iget-object v0, p0, Lg/a/a/k;->o:Ljava/util/logging/Logger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lg/a/a/k;->o:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 95
    const-string v1, ""

    .line 96
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lg/a/a/k;->o:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    const-string v0, "Channel already closed"

    invoke-static {v0}, Lg/a/a/ae;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_3
    :try_start_2
    iget-object v0, p0, Lg/a/a/k;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lg/a/a/k;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_4
    :goto_2
    :try_start_3
    iget-object v0, p0, Lg/a/a/k;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lg/a/a/k;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :cond_5
    :goto_3
    :try_start_4
    iget-object v0, p0, Lg/a/a/k;->d:Lg/a/a/v;

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lg/a/a/k;->d:Lg/a/a/v;

    invoke-virtual {v0}, Lg/a/a/v;->a()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :cond_6
    :goto_4
    :try_start_5
    iget-object v0, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lg/a/a/ae;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    invoke-static {v0}, Lg/a/a/ae;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 118
    :catch_2
    move-exception v0

    invoke-static {v0}, Lg/a/a/ae;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 125
    :catch_3
    move-exception v0

    invoke-static {v0}, Lg/a/a/ae;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0
.end method
