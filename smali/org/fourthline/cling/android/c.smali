.class final Lorg/fourthline/cling/android/c;
.super Lorg/fourthline/cling/UpnpServiceImpl;
.source "AndroidUpnpServiceImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;


# direct methods
.method varargs constructor <init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/android/c;->a:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    .line 54
    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/UpnpServiceImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V

    return-void
.end method


# virtual methods
.method protected final createRouter(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/transport/Router;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/android/c;->a:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    .line 59
    invoke-virtual {p0}, Lorg/fourthline/cling/android/c;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lorg/fourthline/cling/android/c;->a:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    .line 58
    invoke-virtual {v0, v1, p1, v2}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->createRouter(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)Lorg/fourthline/cling/android/AndroidRouter;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/android/c;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/android/AndroidRouter;

    invoke-virtual {v0}, Lorg/fourthline/cling/android/AndroidRouter;->unregisterBroadcastReceiver()V

    .line 74
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
