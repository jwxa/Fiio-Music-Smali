.class final Lorg/fourthline/cling/protocol/sync/l;
.super Ljava/lang/Object;
.source "SendingUnsubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

.field private final synthetic b:Lorg/fourthline/cling/model/message/StreamResponseMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/l;->a:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unsubscribe failed, no response received"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->a:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1, v3}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsubscribe failed, response was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->a:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v1, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v2, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v2, v0}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsubscribe successful, response was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->a:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v1, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/l;->b:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v3, v0}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0
.end method
