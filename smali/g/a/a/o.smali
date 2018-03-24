.class public final Lg/a/a/o;
.super Lcom/d/a/a/m;
.source "HttpServerImpl.java"


# instance fields
.field a:Lg/a/a/ae;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/a/a/o;-><init>(Ljava/net/InetSocketAddress;I)V

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/d/a/a/m;-><init>()V

    .line 32
    new-instance v0, Lg/a/a/ae;

    const-string v1, "http"

    invoke-direct {v0, p0, v1, p1, p2}, Lg/a/a/ae;-><init>(Lcom/d/a/a/m;Ljava/lang/String;Ljava/net/InetSocketAddress;I)V

    iput-object v0, p0, Lg/a/a/o;->a:Lg/a/a/ae;

    .line 33
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;Lcom/d/a/a/k;)Lcom/d/a/a/i;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lg/a/a/o;->a:Lg/a/a/ae;

    invoke-virtual {v0, p1, p2}, Lg/a/a/ae;->a(Ljava/lang/String;Lcom/d/a/a/k;)Lg/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lg/a/a/o;->a:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->a()V

    .line 41
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lg/a/a/o;->a:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->c()V

    .line 53
    return-void
.end method

.method public final c()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lg/a/a/o;->a:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
