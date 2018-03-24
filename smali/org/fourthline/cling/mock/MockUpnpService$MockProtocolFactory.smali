.class public Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;
.super Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;
.source "MockUpnpService.java"


# instance fields
.field private sendsAlive:Z


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Z)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 125
    iput-boolean p2, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    .line 126
    return-void
.end method

.method static synthetic access$0(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    return v0
.end method


# virtual methods
.method public createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lorg/fourthline/cling/mock/b;

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/fourthline/cling/mock/b;-><init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)Lorg/fourthline/cling/protocol/async/SendingSearch;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/fourthline/cling/mock/c;

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/fourthline/cling/mock/c;-><init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method
