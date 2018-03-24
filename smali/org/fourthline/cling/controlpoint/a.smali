.class final Lorg/fourthline/cling/controlpoint/a;
.super Lorg/fourthline/cling/model/gena/LocalGENASubscription;
.source "SubscriptionCallback.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 142
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final ended(Lorg/fourthline/cling/model/gena/CancelReason;)V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 161
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final established()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->established(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final eventReceived()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local service state updated, notifying callback, sequence is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/a;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/a;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 169
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/a;->incrementSequence()V

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
