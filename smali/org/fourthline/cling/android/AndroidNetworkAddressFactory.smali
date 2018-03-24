.class public Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;
.super Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;
.source "AndroidNetworkAddressFactory.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected discoverNetworkInterfaces()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    invoke-super {p0}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->discoverNetworkInterfaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while enumerating network interfaces, trying once more: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->discoverNetworkInterfaces()V

    goto :goto_0
.end method

.method public getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;->getInetAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find any IPv4 or IPv6 address on interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 74
    if-eqz p2, :cond_2

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_2
    if-nez p2, :cond_0

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method protected isUsableAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 5

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->isUsableAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 56
    :try_start_0
    const-class v2, Ljava/net/InetAddress;

    const-string v3, "hostName"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed injecting hostName to work around Android InetAddress DNS bug: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requiresNetworkInterface()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
