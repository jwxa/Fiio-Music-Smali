.class final Lorg/fourthline/cling/protocol/sync/g;
.super Ljava/lang/Object;
.source "SendingSubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/g;->a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/g;->a:Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->fail(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 81
    return-void
.end method
