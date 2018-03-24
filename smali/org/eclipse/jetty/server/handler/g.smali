.class final Lorg/eclipse/jetty/server/handler/g;
.super Ljava/lang/Object;
.source "HandlerCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ClassLoader;

.field final synthetic b:I

.field final synthetic c:Lorg/eclipse/jetty/util/MultiException;

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic e:Lorg/eclipse/jetty/server/handler/HandlerCollection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/HandlerCollection;Ljava/lang/ClassLoader;ILorg/eclipse/jetty/util/MultiException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/g;->e:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/g;->a:Ljava/lang/ClassLoader;

    iput p3, p0, Lorg/eclipse/jetty/server/handler/g;->b:I

    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/g;->c:Lorg/eclipse/jetty/util/MultiException;

    iput-object p5, p0, Lorg/eclipse/jetty/server/handler/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/g;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/g;->e:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->access$000(Lorg/eclipse/jetty/server/handler/HandlerCollection;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/server/handler/g;->b:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 218
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/g;->c:Lorg/eclipse/jetty/util/MultiException;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 217
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
