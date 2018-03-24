.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "AsyncServletStreamServerConfigurationImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field protected asyncTimeoutSeconds:I

.field protected listenPort:I

.field protected servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 40
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 45
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 46
    iput p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;II)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 53
    iput p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 54
    iput p3, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 55
    return-void
.end method


# virtual methods
.method public getAsyncTimeoutSeconds()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    return v0
.end method

.method public getListenPort()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    return v0
.end method

.method public getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    return-object v0
.end method

.method public setAsyncTimeoutSeconds(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 80
    return-void
.end method

.method public setListenPort(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 66
    return-void
.end method

.method public setServletContainerAdapter(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 88
    return-void
.end method
