.class final Lorg/fourthline/cling/mock/a;
.super Lorg/fourthline/cling/registry/RegistryImpl;
.source "MockUpnpService.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/mock/MockUpnpService;

.field private final synthetic b:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/mock/a;->a:Lorg/fourthline/cling/mock/MockUpnpService;

    iput-object p3, p0, Lorg/fourthline/cling/mock/a;->b:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    .line 86
    invoke-direct {p0, p2}, Lorg/fourthline/cling/registry/RegistryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    return-void
.end method


# virtual methods
.method protected final createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/mock/a;->b:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-virtual {v0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->isMaintainsRegistry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
