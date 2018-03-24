.class final Lorg/fourthline/cling/transport/impl/apache/f;
.super Lorg/apache/http/impl/DefaultHttpServerConnection;
.source "StreamServerImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/f;->a:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

    .line 117
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method protected final createHttpRequestFactory()Lorg/apache/http/HttpRequestFactory;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;-><init>()V

    return-object v0
.end method
