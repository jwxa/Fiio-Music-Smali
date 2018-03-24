.class final Lorg/apache/http/impl/client/g;
.super Lorg/apache/http/impl/DefaultHttpClientConnection;
.source "ProxyClient.java"

# interfaces
.implements Lorg/apache/http/conn/HttpRoutedConnection;


# instance fields
.field private final a:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpClientConnection;-><init>()V

    .line 225
    iput-object p1, p0, Lorg/apache/http/impl/client/g;->a:Lorg/apache/http/conn/routing/HttpRoute;

    .line 226
    return-void
.end method


# virtual methods
.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/http/impl/client/g;->a:Lorg/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method public final getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method
