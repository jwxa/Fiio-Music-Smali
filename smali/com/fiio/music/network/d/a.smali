.class public Lcom/fiio/music/network/d/a;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/fiio/music/network/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/fiio/music/network/d/a;->c:Landroid/net/ConnectivityManager;

    .line 14
    iput-object v0, p0, Lcom/fiio/music/network/d/a;->d:Landroid/net/NetworkInfo;

    .line 17
    sget-object v0, Lcom/fiio/music/network/d/a;->a:Ljava/lang/String;

    const-string v1, "NetworkUtil:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Lcom/fiio/music/network/d/a;->b:Landroid/content/Context;

    .line 19
    if-eqz p1, :cond_1

    .line 20
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/fiio/music/network/d/a;->c:Landroid/net/ConnectivityManager;

    .line 21
    iget-object v0, p0, Lcom/fiio/music/network/d/a;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NetworkUtil ConnectivityManager is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/d/a;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/d/a;->d:Landroid/net/NetworkInfo;

    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NetworkUtil contex is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 61
    sget-object v1, Lcom/fiio/music/network/d/a;->a:Ljava/lang/String;

    const-string v2, "isConnectedToInternet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/fiio/music/network/d/a;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 64
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 69
    :goto_1
    return v0

    .line 64
    :cond_0
    aget-object v4, v2, v1

    .line 65
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 66
    const/4 v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
