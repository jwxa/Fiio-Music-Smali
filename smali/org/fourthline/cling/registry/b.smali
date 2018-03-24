.class final Lorg/fourthline/cling/registry/b;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/a;

.field private final synthetic b:Lorg/fourthline/cling/registry/RegistryListener;

.field private final synthetic c:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/b;->a:Lorg/fourthline/cling/registry/a;

    iput-object p2, p0, Lorg/fourthline/cling/registry/b;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/b;->c:Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/registry/b;->b:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/b;->a:Lorg/fourthline/cling/registry/a;

    iget-object v1, v1, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/b;->c:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 122
    return-void
.end method
