.class final Lorg/fourthline/cling/protocol/sync/d;
.super Ljava/lang/Object;
.source "SendingRenewal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

.field private final synthetic b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/d;->a:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/d;->b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/d;->a:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    iget-object v1, v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v2, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/d;->b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v2, v0}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 83
    return-void
.end method
