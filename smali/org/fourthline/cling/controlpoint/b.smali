.class final Lorg/fourthline/cling/controlpoint/b;
.super Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
.source "SubscriptionCallback.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/RemoteService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 198
    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;-><init>(Lorg/fourthline/cling/model/meta/RemoteService;I)V

    return-void
.end method


# virtual methods
.method public final ended(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 217
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0, p1, p2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 215
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
    .line 208
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 210
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->established(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 208
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
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final eventsMissed(I)V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final failed(Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 203
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final invalidMessage(Lorg/fourthline/cling/model/UnsupportedDataException;)V
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/b;->a:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->invalidMessage(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
