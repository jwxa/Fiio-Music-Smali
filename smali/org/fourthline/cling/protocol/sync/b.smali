.class final Lorg/fourthline/cling/protocol/sync/b;
.super Ljava/lang/Object;
.source "ReceivingEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

.field private final synthetic b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

.field private final synthetic c:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/b;->a:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/b;->b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iput-object p3, p0, Lorg/fourthline/cling/protocol/sync/b;->c:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->access$1()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Calling active subscription with event state variable values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/b;->b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 136
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/b;->c:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/b;->c:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->receive(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V

    .line 139
    return-void
.end method
