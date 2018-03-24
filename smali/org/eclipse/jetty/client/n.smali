.class final Lorg/eclipse/jetty/client/n;
.super Ljava/lang/Object;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

.field final synthetic b:Lorg/eclipse/jetty/client/HttpDestination;

.field final synthetic c:Lorg/eclipse/jetty/client/m;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/m;Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/eclipse/jetty/client/n;->c:Lorg/eclipse/jetty/client/m;

    iput-object p2, p0, Lorg/eclipse/jetty/client/n;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iput-object p3, p0, Lorg/eclipse/jetty/client/n;->b:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/n;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 77
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 78
    if-eq v1, v0, :cond_0

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/n;->b:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/n;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/client/m;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 88
    :try_start_2
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Lorg/eclipse/jetty/client/m;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/client/n;->b:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/n;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 102
    :catch_2
    move-exception v0

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/client/m;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    :cond_1
    :try_start_4
    invoke-static {}, Lorg/eclipse/jetty/client/m;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 93
    iget-object v1, p0, Lorg/eclipse/jetty/client/n;->b:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    .line 100
    :try_start_5
    iget-object v1, p0, Lorg/eclipse/jetty/client/n;->b:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v2, p0, Lorg/eclipse/jetty/client/n;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :goto_3
    throw v0

    .line 102
    :catch_3
    move-exception v1

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/client/m;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
