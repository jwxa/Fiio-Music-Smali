.class final Lorg/fourthline/cling/transport/impl/apache/c;
.super Lorg/apache/http/client/methods/HttpPost;
.source "StreamClientImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/c;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    .line 143
    invoke-direct {p0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
