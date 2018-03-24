.class final Lorg/fourthline/cling/registry/n;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/j;

.field private final synthetic b:Lorg/fourthline/cling/registry/RegistryListener;

.field private final synthetic c:Lorg/fourthline/cling/model/meta/RemoteDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/j;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/n;->a:Lorg/fourthline/cling/registry/j;

    iput-object p2, p0, Lorg/fourthline/cling/registry/n;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/n;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lorg/fourthline/cling/registry/n;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/n;->a:Lorg/fourthline/cling/registry/j;

    iget-object v1, v1, Lorg/fourthline/cling/registry/j;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/n;->c:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 219
    return-void
.end method
