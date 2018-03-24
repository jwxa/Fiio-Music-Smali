.class final Lorg/fourthline/cling/registry/l;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/j;

.field private final synthetic b:Lorg/fourthline/cling/registry/RegistryListener;

.field private final synthetic c:Lorg/fourthline/cling/registry/h;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/j;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/registry/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/l;->a:Lorg/fourthline/cling/registry/j;

    iput-object p2, p0, Lorg/fourthline/cling/registry/l;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/l;->c:Lorg/fourthline/cling/registry/h;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lorg/fourthline/cling/registry/l;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v0, p0, Lorg/fourthline/cling/registry/l;->a:Lorg/fourthline/cling/registry/j;

    iget-object v2, v0, Lorg/fourthline/cling/registry/j;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v0, p0, Lorg/fourthline/cling/registry/l;->c:Lorg/fourthline/cling/registry/h;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v1, v2, v0}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceUpdated(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 155
    return-void
.end method
