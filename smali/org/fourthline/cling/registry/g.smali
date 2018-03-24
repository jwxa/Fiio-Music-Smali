.class final Lorg/fourthline/cling/registry/g;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/RegistryImpl;

.field private final synthetic b:Lorg/fourthline/cling/registry/RegistryListener;

.field private final synthetic c:Lorg/fourthline/cling/model/meta/RemoteDevice;

.field private final synthetic d:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/g;->a:Lorg/fourthline/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/fourthline/cling/registry/g;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/g;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    iput-object p4, p0, Lorg/fourthline/cling/registry/g;->d:Ljava/lang/Exception;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lorg/fourthline/cling/registry/g;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/g;->a:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/g;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    iget-object v3, p0, Lorg/fourthline/cling/registry/g;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 149
    return-void
.end method
