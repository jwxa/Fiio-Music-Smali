.class public Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;
.super Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage",
        "<",
        "Lorg/fourthline/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourceAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourcePort()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/LocationHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/EXTHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/EXTHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 46
    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 48
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 49
    new-instance v2, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 52
    :cond_0
    return-void
.end method
