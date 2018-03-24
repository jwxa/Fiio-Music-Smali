.class final Lorg/fourthline/cling/registry/m;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/j;

.field private final synthetic b:Lorg/fourthline/cling/registry/h;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/j;Lorg/fourthline/cling/registry/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/m;->a:Lorg/fourthline/cling/registry/j;

    iput-object p2, p0, Lorg/fourthline/cling/registry/m;->b:Lorg/fourthline/cling/registry/h;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lorg/fourthline/cling/registry/m;->b:Lorg/fourthline/cling/registry/h;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 205
    return-void
.end method
