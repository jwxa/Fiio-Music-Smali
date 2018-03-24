.class public Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;
.super Ljava/lang/Object;
.source "RetrieveRemoteDescriptors.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final activeRetrievals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected errorsAlreadyLogged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/types/UDN;",
            ">;"
        }
    .end annotation
.end field

.field private rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

.field private final upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 78
    iput-object p2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 79
    return-void
.end method


# virtual methods
.method protected describe()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    const-string v1, "Router not yet initialized"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 139
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-interface {v2, v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 143
    :cond_1
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending device descriptor retrieval message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    if-nez v1, :cond_2

    .line 157
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Device descriptor retrieval failed, no response: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 149
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Device descriptor retrieval failed: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    const-string v3, ", possibly invalid URL: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Device descriptor retrieval failed: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Received device descriptor without or with invalid Content-Type: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    :cond_4
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 182
    :cond_5
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Received empty device descriptor:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_6
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received root device descriptor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describe(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected describe(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v0

    .line 196
    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 199
    invoke-interface {v0, v3, p1}, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote device described (without services) notifying listeners: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    :try_end_1
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 207
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hydrating described device\'s services: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v1

    .line 209
    if-nez v1, :cond_2

    .line 210
    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device service description failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 214
    :cond_0
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    .line 217
    new-instance v3, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Device service description failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-interface {v1, v0, v3}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding fully hydrated remote device to registry: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/fourthline/cling/registry/Registry;->addDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    :try_end_2
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    move v3, v2

    move-object v2, v0

    .line 231
    :goto_1
    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not validate device model: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Lorg/fourthline/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ValidationError;

    .line 235
    sget-object v5, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    .line 242
    :goto_3
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not hydrate device or its services from descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 243
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cause was: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 244
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 247
    :catch_2
    move-exception v0

    .line 248
    :goto_4
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding hydrated device to registry failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 249
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cause was: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistrationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 250
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 247
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 241
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    .line 229
    :catch_5
    move-exception v0

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move v3, v2

    move-object v2, v0

    goto/16 :goto_1
.end method

.method protected describeService(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 311
    new-instance v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v3, v0, v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 315
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-interface {v4, v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 319
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending service descriptor retrieval message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v3

    .line 322
    if-nez v3, :cond_1

    .line 323
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not retrieve service descriptor, no response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 347
    :goto_0
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not normalize service descriptor URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    sget-object v4, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Service descriptor retrieval failed: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 332
    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received service descriptor without or with invalid Content-Type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 340
    :cond_3
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 342
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received empty service descriptor:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 343
    goto/16 :goto_0

    .line 346
    :cond_5
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received service descriptor, hydrating service model: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v1

    .line 347
    invoke-interface {v1, p1, v0}, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;->describe(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    goto/16 :goto_0
.end method

.method protected describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->filterExclusiveServices([Lorg/fourthline/cling/model/meta/RemoteService;)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_4

    .line 282
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    array-length v0, v0

    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    move v0, v1

    .line 283
    :goto_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 290
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    .line 291
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v2

    .line 292
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v3

    .line 293
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    .line 295
    invoke-virtual {p1, v6}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v6

    move-object v0, p1

    .line 289
    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    :goto_3
    return-object v0

    .line 261
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 262
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeService(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    .line 263
    if-nez v0, :cond_3

    move-object v0, v2

    .line 264
    goto :goto_3

    .line 266
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_4
    aget-object v5, v3, v0

    .line 273
    if-eqz v5, :cond_6

    .line 274
    invoke-virtual {p0, v5}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v5

    .line 275
    if-nez v5, :cond_5

    move-object v0, v2

    .line 276
    goto :goto_3

    .line 278
    :cond_5
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_7
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    aget-object v1, v1, v0

    .line 285
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Icon;->deepCopy()Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    aput-object v1, v5, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected filterExclusiveServices([Lorg/fourthline/cling/model/meta/RemoteService;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v4

    .line 356
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_2

    .line 357
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 370
    :cond_1
    return-object v0

    .line 359
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 361
    array-length v7, v4

    move v3, v2

    :goto_1
    if-lt v3, v7, :cond_3

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_3
    aget-object v8, v4, v3

    .line 362
    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/RemoteService;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 363
    sget-object v8, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Including exclusive service: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 364
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    :cond_4
    sget-object v9, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Excluding unwanted service: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v1

    .line 93
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting early, active retrieval for URL already in progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lorg/fourthline/cling/registry/Registry;->getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting early, already discovered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describe()V
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_1
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Descriptor retrieval failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    throw v0
.end method
