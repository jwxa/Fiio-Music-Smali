.class public Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;
.super Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
.source "SslSocketConnector.java"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    .line 622
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V

    .line 623
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    return-void
.end method

.method public bridge synthetic dispatch()V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    return-void
.end method

.method public bridge synthetic fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 618
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 618
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getHandshakeTimeout()I

    move-result v1

    .line 643
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    .line 644
    if-lez v1, :cond_0

    .line 645
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 648
    new-instance v3, Lorg/eclipse/jetty/server/ssl/b;

    invoke-direct {v3, p0, v0}, Lorg/eclipse/jetty/server/ssl/b;-><init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 665
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 667
    if-lez v1, :cond_1

    .line 668
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 670
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->run()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 684
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 674
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 675
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 676
    :catch_1
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 678
    :catch_2
    move-exception v0

    .line 680
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 681
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 682
    :catch_3
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method public shutdownInput()V
    .locals 0

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V

    .line 635
    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    .prologue
    .line 628
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V

    .line 629
    return-void
.end method
