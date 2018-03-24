.class public Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer",
        "<",
        "Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

.field protected globalParams:Lorg/apache/http/params/HttpParams;

.field protected router:Lorg/fourthline/cling/transport/Router;

.field protected serverSocket:Ljava/net/ServerSocket;

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    .line 59
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    .line 60
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 73
    new-instance v0, Ljava/net/ServerSocket;

    .line 74
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->getListenPort()I

    move-result v1

    .line 75
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    move-result v2

    .line 73
    invoke-direct {v0, v1, v2, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 72
    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 79
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created socket (for receiving TCP streams) on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 82
    const-string v1, "http.socket.timeout"

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->getDataWaitTimeoutSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 83
    const-string v1, "http.socket.buffer-size"

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->getBufferSizeKilobytes()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 84
    const-string v1, "http.connection.stalecheck"

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->isStaleConnectionCheck()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 85
    const-string v1, "http.tcp.nodelay"

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->isTcpNoDelay()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    new-instance v1, Lorg/fourthline/cling/transport/spi/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isConnectionOpen(Ljava/net/Socket;)Z
    .locals 1

    .prologue
    .line 183
    const-string v0, " "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->isConnectionOpen(Ljava/net/Socket;[B)Z

    move-result v0

    return v0
.end method

.method protected isConnectionOpen(Ljava/net/Socket;[B)Z
    .locals 3

    .prologue
    .line 187
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking if client connection is still open on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client connection has been closed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 108
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entering blocking receiving loop, listening for HTTP stream requests on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    :goto_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    if-eqz v0, :cond_2

    .line 163
    :cond_0
    :goto_1
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Receiving loop stopped"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Closing streaming server socket"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 172
    :cond_1
    :goto_2
    return-void

    .line 114
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 117
    new-instance v3, Lorg/fourthline/cling/transport/impl/apache/f;

    invoke-direct {v3, p0}, Lorg/fourthline/cling/transport/impl/apache/f;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;)V

    .line 124
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incoming connection from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v3, v5, v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 129
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/g;

    .line 130
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v1}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    .line 132
    iget-object v4, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    move-object v1, p0

    move-object v6, v3

    .line 129
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/transport/impl/apache/g;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;Ljava/net/Socket;Lorg/apache/http/impl/DefaultHttpServerConnection;)V

    .line 143
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v1, v0}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "I/O has been interrupted, stopping receiving loop, bytes transfered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    iget-boolean v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    if-nez v1, :cond_0

    .line 151
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception using server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception initializing receiving loop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :catch_3
    move-exception v0

    .line 169
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing streaming server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing streaming server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
