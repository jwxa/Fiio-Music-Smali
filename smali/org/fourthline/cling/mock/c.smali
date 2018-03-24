.class final Lorg/fourthline/cling/mock/c;
.super Lorg/fourthline/cling/protocol/async/SendingSearch;
.source "MockUpnpService.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/mock/c;->a:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    .line 140
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method


# virtual methods
.method public final getBulkIntervalMilliseconds()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method
