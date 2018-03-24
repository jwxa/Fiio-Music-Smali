.class final Lcom/a/a/p;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/ay;
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ay",
        "<",
        "Ljava/net/InetAddress;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/a/a/ba;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/ba;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    new-instance v1, Lcom/a/a/bf;

    invoke-direct {v1, v0}, Lcom/a/a/bf;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 2

    .prologue
    .line 496
    check-cast p1, Ljava/net/InetAddress;

    new-instance v0, Lcom/a/a/bg;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    invoke-static {p1}, Lcom/a/a/p;->a(Lcom/a/a/ba;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
