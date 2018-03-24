.class final Lorg/eclipse/jetty/client/c;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# instance fields
.field final a:Lorg/eclipse/jetty/client/HttpExchange;

.field final b:Lorg/eclipse/jetty/client/HttpEventListener;

.field final synthetic c:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lorg/eclipse/jetty/client/c;->c:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    .line 499
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 500
    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 547
    return-void
.end method

.method public final onException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 553
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 554
    return-void
.end method

.method public final onExpire()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 561
    return-void
.end method

.method public final onRequestCommitted()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final onRequestComplete()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public final onResponseComplete()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 538
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 539
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->c:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 540
    return-void
.end method

.method public final onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public final onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 521
    return-void
.end method

.method public final onResponseHeaderComplete()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    .line 527
    return-void
.end method

.method public final onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public final onRetry()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->a:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 567
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->b:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 568
    return-void
.end method
