.class final Lorg/fourthline/cling/mock/d;
.super Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;
.source "MockUpnpServiceConfiguration.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/mock/d;->a:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    .line 72
    invoke-direct {p0, p2}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final isUsableAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isUsableNetworkInterface(Ljava/net/NetworkInterface;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v0

    return v0
.end method
