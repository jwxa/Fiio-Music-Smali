.class final Lorg/eclipse/jetty/client/h;
.super Lorg/eclipse/jetty/client/ContentExchange;
.source "HttpDestination.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/client/HttpDestination;

.field private final b:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

.field private final c:Lorg/eclipse/jetty/client/HttpExchange;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .prologue
    .line 681
    iput-object p1, p0, Lorg/eclipse/jetty/client/h;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;-><init>()V

    .line 682
    iput-object p3, p0, Lorg/eclipse/jetty/client/h;->b:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    .line 683
    iput-object p4, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    .line 684
    const-string v0, "CONNECT"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/h;->setMethod(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p4}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/h;->setVersion(I)V

    .line 686
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/h;->setRequestURI(Ljava/lang/String;)V

    .line 688
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/client/h;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "Proxy-Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/h;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "User-Agent"

    const-string v1, "Jetty-Client"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/h;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method


# virtual methods
.method protected final onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 715
    return-void
.end method

.method protected final onException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 723
    :cond_0
    return-void
.end method

.method protected final onExpire()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 731
    :cond_0
    return-void
.end method

.method protected final onResponseComplete()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/h;->getResponseStatus()I

    move-result v0

    .line 697
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lorg/eclipse/jetty/client/h;->b:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    .line 709
    :goto_0
    return-void

    .line 701
    :cond_0
    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_1

    .line 703
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/h;->onExpire()V

    goto :goto_0

    .line 707
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/client/h;->b:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/h;->b:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemotePort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t return http return code 200, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while trying to request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/client/h;->c:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/h;->onException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
