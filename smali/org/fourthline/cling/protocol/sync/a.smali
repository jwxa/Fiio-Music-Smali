.class final Lorg/fourthline/cling/protocol/sync/a;
.super Ljava/lang/Object;
.source "ReceivingEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

.field private final synthetic b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

.field private final synthetic c:Lorg/fourthline/cling/model/UnsupportedDataException;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/a;->a:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/a;->b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iput-object p3, p0, Lorg/fourthline/cling/protocol/sync/a;->c:Lorg/fourthline/cling/model/UnsupportedDataException;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/a;->b:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/a;->c:Lorg/fourthline/cling/model/UnsupportedDataException;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->invalidMessage(Lorg/fourthline/cling/model/UnsupportedDataException;)V

    .line 109
    return-void
.end method
