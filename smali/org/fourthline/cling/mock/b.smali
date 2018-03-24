.class final Lorg/fourthline/cling/mock/b;
.super Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
.source "MockUpnpService.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/mock/b;->a:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    .line 130
    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/mock/b;->a:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-static {v0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->access$0(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->execute()V

    .line 134
    :cond_0
    return-void
.end method
