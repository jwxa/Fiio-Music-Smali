.class final Lorg/fourthline/cling/protocol/sync/h;
.super Ljava/lang/Object;
.source "SendingSubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

.field private final synthetic b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/h;->a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/h;->b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/h;->a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    iget-object v1, v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/h;->b:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->fail(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 114
    return-void
.end method
