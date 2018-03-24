.class public Lorg/eclipse/jetty/server/LocalConnector;
.super Lorg/eclipse/jetty/server/AbstractConnector;
.source "LocalConnector.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _requests:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/eclipse/jetty/server/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/eclipse/jetty/server/LocalConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/LocalConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/eclipse/jetty/server/AbstractConnector;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/LocalConnector;->_requests:Ljava/util/concurrent/BlockingQueue;

    .line 41
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/LocalConnector;->setMaxIdleTime(I)V

    .line 42
    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/eclipse/jetty/server/LocalConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method protected accept(I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/LocalConnector;->_requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/l;

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/LocalConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public executeRequest(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Lorg/eclipse/jetty/server/l;

    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v1, "UTF-8"

    invoke-direct {v2, p1, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/l;-><init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;B)V

    .line 92
    iget-object v1, p0, Lorg/eclipse/jetty/server/LocalConnector;->_requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method public getResponses(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/LocalConnector;->getResponses(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponses(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/server/LocalConnector;->getResponses(Lorg/eclipse/jetty/io/ByteArrayBuffer;Z)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponses(Lorg/eclipse/jetty/io/ByteArrayBuffer;Z)Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 6

    .prologue
    .line 62
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    new-instance v0, Lorg/eclipse/jetty/server/l;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/l;-><init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;B)V

    .line 64
    iget-object v1, p0, Lorg/eclipse/jetty/server/LocalConnector;->_requests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/LocalConnector;->getMaxIdleTime()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 66
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/l;->a()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
