.class public Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;
.super Ljava/lang/Object;
.source "MulticastReceiverConfigurationImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/MulticastReceiverConfiguration;


# instance fields
.field private group:Ljava/net/InetAddress;

.field private maxDatagramBytes:I

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x280

    invoke-direct {p0, v0, p2, v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x280

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    .line 36
    iput p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    .line 37
    iput p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    .line 38
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxDatagramBytes()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    return v0
.end method

.method public setGroup(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    .line 64
    return-void
.end method

.method public setMaxDatagramBytes(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    .line 80
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    .line 72
    return-void
.end method
