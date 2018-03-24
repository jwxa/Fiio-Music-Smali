.class final Lorg/fourthline/cling/transport/impl/apache/b;
.super Lorg/apache/http/client/methods/HttpGet;
.source "StreamClientImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/b;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    .line 130
    invoke-direct {p0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
