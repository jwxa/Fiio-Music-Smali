.class public Lorg/fourthline/cling/android/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final CONNECTIVITY_TYPE_ETHERNET:I = 0x9

.field private static final CONNECTIVITY_TYPE_WIMAX:I = 0x6

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/fourthline/cling/android/NetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/android/NetworkUtils;->log:Ljava/util/logging/Logger;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 39
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 55
    :cond_4
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    :cond_5
    sget-object v0, Lorg/fourthline/cling/android/NetworkUtils;->log:Ljava/util/logging/Logger;

    const-string v1, "Could not find any connected network..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEthernet(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result v0

    return v0
.end method

.method public static isMobile(Landroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkType(Landroid/net/NetworkInfo;I)Z
    .locals 1

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSDPAwareNetwork(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lorg/fourthline/cling/android/NetworkUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/fourthline/cling/android/NetworkUtils;->isEthernet(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWifi(Landroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-static {p0, v0}, Lorg/fourthline/cling/android/NetworkUtils;->isNetworkType(Landroid/net/NetworkInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
