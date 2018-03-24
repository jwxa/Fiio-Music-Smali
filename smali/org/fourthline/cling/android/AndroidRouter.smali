.class public Lorg/fourthline/cling/android/AndroidRouter;
.super Lorg/fourthline/cling/transport/RouterImpl;
.source "AndroidRouter.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field protected multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field protected networkInfo:Landroid/net/NetworkInfo;

.field protected wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/fourthline/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/transport/RouterImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 61
    iput-object p3, p0, Lorg/fourthline/cling/android/AndroidRouter;->context:Landroid/content/Context;

    .line 62
    const-string v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    invoke-static {p3}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 66
    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/fourthline/cling/android/a;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/android/a;-><init>(Lorg/fourthline/cling/android/AndroidRouter;)V

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createWiFiLock()Landroid/net/wifi/WifiManager$WifiLock;
    .locals 5

    .prologue
    .line 203
    const/4 v0, 0x1

    .line 206
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "WIFI_MODE_FULL_HIGH_PERF"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 212
    :goto_0
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    .line 213
    sget-object v2, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created WiFi lock, mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 214
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->setWiFiMulticastLock(Z)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->setWifiLock(Z)V

    .line 112
    :cond_0
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 114
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 112
    return v0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 115
    throw v0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/AndroidRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 88
    :try_start_0
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->setWiFiMulticastLock(Z)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->setWifiLock(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/android/AndroidRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 99
    throw v0
.end method

.method public enableWiFi()Z
    .locals 4

    .prologue
    .line 135
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "Enabling WiFi..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "SetWifiEnabled failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x3a98

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method protected handleRouterExceptionOnNetworkTypeChange(Lorg/fourthline/cling/transport/RouterException;)V
    .locals 5

    .prologue
    .line 246
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 247
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Router was interrupted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Router error on network change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isEthernet()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isEthernet(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method public isMobile()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isMobile(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lorg/fourthline/cling/android/NetworkUtils;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method protected onNetworkTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v2, "Network type changed %s => %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 224
    if-nez p1, :cond_2

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    .line 225
    if-nez p2, :cond_3

    const-string v0, "NONE"

    :goto_1
    aput-object v0, v3, v5

    .line 223
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->disable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    .line 229
    const-string v2, "Disabled router on network type change (old network: %s)"

    new-array v3, v5, [Ljava/lang/Object;

    .line 230
    if-nez p1, :cond_4

    const-string v0, "NONE"

    :goto_2
    aput-object v0, v3, v4

    .line 228
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 234
    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    .line 235
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->enable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v1, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    .line 239
    const-string v2, "Enabled router on network type change (new network: %s)"

    new-array v3, v5, [Ljava/lang/Object;

    .line 240
    if-nez p2, :cond_5

    const-string v0, "NONE"

    :goto_3
    aput-object v0, v3, v4

    .line 238
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 243
    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 240
    :cond_5
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected setWiFiMulticastLock(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 163
    :cond_0
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi multicast lock already acquired"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi multicast lock acquired"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi multicast lock released"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_0

    .line 175
    :cond_3
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi multicast lock already released"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setWifiLock(Z)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->createWiFiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 185
    :cond_0
    if-eqz p1, :cond_2

    .line 186
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi lock already acquired"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi lock acquired"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi lock released"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 197
    :cond_3
    sget-object v0, Lorg/fourthline/cling/android/AndroidRouter;->log:Ljava/util/logging/Logger;

    const-string v1, "WiFi lock already released"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lorg/fourthline/cling/transport/RouterImpl;->shutdown()V

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidRouter;->unregisterBroadcastReceiver()V

    .line 81
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    :cond_0
    return-void
.end method
