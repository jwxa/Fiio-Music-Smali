.class public Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;
.super Ljava/lang/Object;
.source "MulticastReceiverImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/MulticastReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/MulticastReceiver",
        "<",
        "Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

.field protected datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

.field protected multicastAddress:Ljava/net/InetSocketAddress;

.field protected multicastInterface:Ljava/net/NetworkInterface;

.field protected networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected router:Lorg/fourthline/cling/transport/Router;

.field private socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 58
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/MulticastReceiverConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/net/NetworkInterface;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V
    .locals 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 70
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 71
    iput-object p4, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 72
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating wildcard socket (for receiving multicast datagrams) on port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 79
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V

    .line 83
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Joining multicast group: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on network interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0, v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 87
    :try_start_2
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

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 107
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entering blocking receiving loop, listening for UDP datagrams on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getMaxDatagramBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 112
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 117
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 118
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 119
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    .line 120
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 117
    invoke-interface {v0, v2, v3, v4}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 123
    sget-object v2, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UDP datagram received from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string v4, " on local interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    const-string v4, " and address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/fourthline/cling/transport/Router;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    invoke-interface {v3, v0, v1}, Lorg/fourthline/cling/transport/spi/DatagramProcessor;->read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Socket closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Closing multicast socket"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 149
    :cond_0
    return-void

    .line 135
    :catch_1
    move-exception v0

    .line 136
    sget-object v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read datagram: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :catch_2
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :catch_3
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Leaving multicast group"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0, v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not leave multicast group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
