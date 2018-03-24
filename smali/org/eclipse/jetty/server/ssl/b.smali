.class final Lorg/eclipse/jetty/server/ssl/b;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field a:Z

.field final synthetic b:Ljavax/net/ssl/SSLSocket;

.field final synthetic c:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .prologue
    .line 649
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/b;->c:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/ssl/b;->b:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ssl/b;->a:Z

    return-void
.end method


# virtual methods
.method public final handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 3

    .prologue
    .line 653
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ssl/b;->a:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/b;->c:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iget-object v0, v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$000(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;)Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSL renegotiate denied: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/server/ssl/b;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/b;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 662
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ssl/b;->a:Z

    goto :goto_0
.end method
