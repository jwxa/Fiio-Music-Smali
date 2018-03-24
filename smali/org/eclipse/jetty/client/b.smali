.class final Lorg/eclipse/jetty/client/b;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;B)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/b;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public final content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 330
    :cond_0
    return-void
.end method

.method public final earlyEOF()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "early EOF"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 352
    :cond_0
    return-void
.end method

.method public final headerComplete()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 322
    :cond_0
    return-void
.end method

.method public final messageComplete(J)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 338
    :cond_0
    return-void
.end method

.method public final parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 306
    if-eqz v0, :cond_1

    .line 308
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 312
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 314
    :cond_1
    return-void
.end method

.method public final startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public final startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 273
    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "No exchange for response"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 300
    :goto_0
    return-void

    .line 280
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 295
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 296
    iget-object v1, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iput p2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 297
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 298
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    goto :goto_0

    .line 285
    :sswitch_0
    new-instance v1, Lorg/eclipse/jetty/client/c;

    iget-object v2, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/c;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    goto :goto_1

    .line 290
    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lorg/eclipse/jetty/client/b;->a:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    goto :goto_1

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
