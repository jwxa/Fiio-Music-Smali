.class final Lorg/fourthline/cling/registry/f;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/RegistryImpl;

.field private final synthetic b:Lorg/fourthline/cling/registry/RegistryListener;

.field private final synthetic c:Lorg/fourthline/cling/model/meta/RemoteDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/f;->a:Lorg/fourthline/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/fourthline/cling/registry/f;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/f;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/registry/f;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/f;->a:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/f;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 136
    return-void
.end method
