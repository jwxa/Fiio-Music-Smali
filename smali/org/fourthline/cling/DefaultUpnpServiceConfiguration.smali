.class public Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;
.super Ljava/lang/Object;
.source "DefaultUpnpServiceConfiguration.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpServiceConfiguration;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

.field private final defaultExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

.field private final genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

.field private final namespace:Lorg/fourthline/cling/model/Namespace;

.field private final serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

.field private final soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

.field private final streamListenPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    .line 113
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p2, :cond_0

    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unsupported runtime environment, use org.fourthline.cling.android.AndroidUpnpServiceConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->streamListenPort:I

    .line 126
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 133
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 135
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    .line 136
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    .line 117
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public createDatagramIO(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/DatagramIO;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    invoke-direct {v1}, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;-><init>()V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;-><init>(Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;)V

    return-object v0
.end method

.method protected createDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;-><init>()V

    return-object v0
.end method

.method protected createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;

    invoke-direct {v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;-><init>()V

    return-object v0
.end method

.method protected createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-object v0
.end method

.method protected createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    return-object v0
.end method

.method public createMulticastReceiver(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/MulticastReceiver;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;

    .line 160
    new-instance v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 161
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastGroup()Ljava/net/InetAddress;

    move-result-object v2

    .line 162
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastPort()I

    move-result v3

    .line 160
    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 159
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    return-object v0
.end method

.method protected createNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lorg/fourthline/cling/model/Namespace;

    invoke-direct {v0}, Lorg/fourthline/cling/model/Namespace;-><init>()V

    return-object v0
.end method

.method public createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->streamListenPort:I

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-object v0
.end method

.method protected createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;-><init>()V

    return-object v0
.end method

.method protected createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    return-object v0
.end method

.method public createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;

    .line 152
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    .line 153
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 151
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;)V

    return-object v0
.end method

.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    .line 173
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 174
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    move-result v2

    .line 173
    invoke-direct {v1, v2}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;-><init>(I)V

    .line 172
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V

    return-object v0
.end method

.method public getAliveIntervalMillis()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getDatagramIOExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    return-object v0
.end method

.method protected getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    return-object v0
.end method

.method public getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    return-object v0
.end method

.method public getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    return-object v0
.end method

.method public getRegistryListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryMaintenanceIntervalMillis()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x3e8

    return v0
.end method

.method public getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    return-object v0
.end method

.method public getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    return-object v0
.end method

.method public getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public isReceivedSubscriptionTimeoutIgnored()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    const-string v1, "Shutting down default executor service"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 263
    return-void
.end method
