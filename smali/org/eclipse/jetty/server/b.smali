.class final Lorg/eclipse/jetty/server/b;
.super Ljava/io/PrintWriter;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lorg/eclipse/jetty/server/b;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lorg/eclipse/jetty/server/b;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/b;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 383
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/b;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
