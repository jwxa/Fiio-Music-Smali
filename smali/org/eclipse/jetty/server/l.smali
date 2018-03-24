.class final Lorg/eclipse/jetty/server/l;
.super Ljava/lang/Object;
.source "LocalConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/LocalConnector;

.field private final b:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private final c:Z

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private volatile e:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lorg/eclipse/jetty/server/l;->b:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 105
    iput-boolean p3, p0, Lorg/eclipse/jetty/server/l;->c:Z

    .line 106
    iput-object p4, p0, Lorg/eclipse/jetty/server/l;->d:Ljava/util/concurrent/CountDownLatch;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/l;-><init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->e:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/server/m;

    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->b:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->asArray()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/server/m;-><init>(Lorg/eclipse/jetty/server/l;[B)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    .line 125
    new-instance v2, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    iget-object v3, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/LocalConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/eclipse/jetty/server/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 126
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/LocalConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    .line 129
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/l;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getIn()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    .line 138
    if-eq v4, v0, :cond_0

    .line 140
    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/server/LocalConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/l;->e:Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 169
    :cond_1
    return-void

    .line 159
    :cond_2
    if-nez v3, :cond_3

    .line 160
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/l;->e:Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/l;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lorg/eclipse/jetty/server/l;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    throw v0

    .line 152
    :catch_1
    move-exception v0

    .line 154
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/server/LocalConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/l;->e:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    goto :goto_1

    .line 159
    :catchall_1
    move-exception v0

    if-nez v3, :cond_5

    .line 160
    iget-object v3, p0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/l;->e:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
