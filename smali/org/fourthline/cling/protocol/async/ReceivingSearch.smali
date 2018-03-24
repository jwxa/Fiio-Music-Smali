.class public Lorg/fourthline/cling/protocol/async/ReceivingSearch;
.super Lorg/fourthline/cling/protocol/ReceivingAsync;
.source "ReceivingSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingAsync",
        "<",
        "Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/ReceivingAsync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/UpnpMessage;)V

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    .line 73
    return-void
.end method


# virtual methods
.method protected createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;

    .line 204
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 205
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v3

    .line 203
    invoke-direct {v2, v0, v3, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 202
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    new-instance v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 213
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 214
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v3

    .line 212
    invoke-direct {v2, v0, v3, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 211
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 221
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 222
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v3

    .line 220
    invoke-direct {v2, v0, v3, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 219
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    return-object v1

    .line 227
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 228
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    goto :goto_0
.end method

.method protected createServiceTypeMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->findServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 248
    return-object v2

    .line 237
    :cond_0
    aget-object v5, v3, v1

    .line 239
    new-instance v6, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 240
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 241
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v7

    .line 239
    invoke-direct {v6, v0, v7, p1, v5}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/ServiceType;)V

    .line 245
    invoke-virtual {p0, v6}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 246
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected execute()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v1, "Router hasn\'t completed initialization, ignoring received search message"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->isMANSSDPDiscover()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid search request, no or invalid MAN ssdp:discover header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid search request, did not contain ST header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/fourthline/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 97
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v1, "Aborting search response, no active stream servers found (network disabled?)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/NetworkAddress;

    .line 102
    invoke-virtual {p0, v1, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendResponses(Lorg/fourthline/cling/model/message/header/UpnpHeader;Lorg/fourthline/cling/model/NetworkAddress;)V

    goto :goto_1
.end method

.method protected getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lorg/fourthline/cling/model/Location;

    .line 336
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v1

    .line 334
    invoke-direct {v0, p1, v1}, Lorg/fourthline/cling/model/Location;-><init>(Lorg/fourthline/cling/model/NetworkAddress;Ljava/net/URI;)V

    return-object v0
.end method

.method protected isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method protected sendResponses(Lorg/fourthline/cling/model/message/header/UpnpHeader;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 3

    .prologue
    .line 132
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/STAllHeader;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseAll(Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 155
    :goto_0
    return-void

    .line 136
    :cond_0
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseRootDevices(Lorg/fourthline/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 140
    :cond_1
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/UDNHeader;

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseUDN(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 144
    :cond_2
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseDeviceType(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 148
    :cond_3
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseServiceType(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 153
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-implemented search request target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendSearchResponseAll(Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 9

    .prologue
    .line 158
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v1, "Responding to \'all\' search with advertisement messages for all local devices"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    return-void

    .line 159
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 161
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending root device messages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v0, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 168
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    array-length v5, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_4

    .line 184
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createServiceTypeMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 186
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v2, "Sending service type messages"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_2

    .line 166
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 169
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    .line 173
    :cond_4
    aget-object v2, v1, v3

    .line 174
    sget-object v6, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending embedded device messages: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 177
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 175
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 178
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_3
.end method

.method protected sendSearchResponseDeviceType(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 5

    .prologue
    .line 289
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Responding to device type search: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    return-void

    .line 291
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/Device;

    .line 292
    instance-of v0, v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 294
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sending matching device type search result for: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 299
    new-instance v4, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 300
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-object v2, v1

    .line 301
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v2

    .line 302
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 299
    invoke-direct {v4, v0, v2, v1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 304
    invoke-virtual {p0, v4}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 305
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseRootDevices(Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 5

    .prologue
    .line 252
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v1, "Responding to root device search with advertisement messages for all local root devices"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    return-void

    .line 253
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 255
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v3, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;

    .line 260
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 261
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v4

    .line 259
    invoke-direct {v3, v1, v4, v0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 264
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 265
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseServiceType(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 5

    .prologue
    .line 311
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Responding to service type search: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->getDevices(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    return-void

    .line 313
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/Device;

    .line 314
    instance-of v0, v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 316
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sending matching service type search result: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 321
    new-instance v4, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 322
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-object v2, v1

    .line 323
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v2

    .line 324
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 321
    invoke-direct {v4, v0, v2, v1, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/ServiceType;)V

    .line 327
    invoke-virtual {p0, v4}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 328
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseUDN(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/fourthline/cling/registry/Registry;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    instance-of v0, v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 273
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Responding to UDN device search: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 278
    new-instance v3, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 279
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-object v2, v1

    .line 280
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    move-result-object v2

    .line 281
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 278
    invoke-direct {v3, v0, v2, v1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 283
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 284
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected waitBeforeExecution()Z
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getMX()Ljava/lang/Integer;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid search request, did not contain MX header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x78

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    .line 122
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 123
    iget-object v1, p0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 124
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sleeping "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds to avoid flooding with search responses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 128
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
