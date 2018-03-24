.class final Lorg/fourthline/cling/registry/c;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/a;

.field private final synthetic b:Lorg/fourthline/cling/registry/h;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/registry/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/c;->a:Lorg/fourthline/cling/registry/a;

    iput-object p2, p0, Lorg/fourthline/cling/registry/c;->b:Lorg/fourthline/cling/registry/h;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/fourthline/cling/registry/c;->b:Lorg/fourthline/cling/registry/h;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    .line 173
    return-void
.end method
