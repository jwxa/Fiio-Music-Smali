.class public final Lcom/fiio/music/util/b;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# static fields
.field private static a:Lcom/fiio/music/util/b;


# instance fields
.field private b:Landroid/bluetooth/BluetoothA2dp;

.field private c:Landroid/bluetooth/BluetoothHeadset;

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Landroid/content/Context;

.field private f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private g:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/b;->a:Lcom/fiio/music/util/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 42
    new-instance v0, Lcom/fiio/music/util/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/c;-><init>(Lcom/fiio/music/util/b;)V

    iput-object v0, p0, Lcom/fiio/music/util/b;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 56
    new-instance v0, Lcom/fiio/music/util/d;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/d;-><init>(Lcom/fiio/music/util/b;)V

    iput-object v0, p0, Lcom/fiio/music/util/b;->g:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 73
    iput-object p1, p0, Lcom/fiio/music/util/b;->e:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/fiio/music/util/b;
    .locals 5

    .prologue
    .line 105
    sget-object v0, Lcom/fiio/music/util/b;->a:Lcom/fiio/music/util/b;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/fiio/music/util/b;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/b;-><init>(Landroid/content/Context;)V

    .line 107
    sput-object v0, Lcom/fiio/music/util/b;->a:Lcom/fiio/music/util/b;

    iget-object v1, v0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v0, Lcom/fiio/music/util/b;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/fiio/music/util/b;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, v0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v0, Lcom/fiio/music/util/b;->e:Landroid/content/Context;

    iget-object v0, v0, Lcom/fiio/music/util/b;->g:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 109
    :cond_0
    sget-object v0, Lcom/fiio/music/util/b;->a:Lcom/fiio/music/util/b;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fiio/music/util/b;->b:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fiio/music/util/b;->c:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x2

    .line 140
    iget-object v1, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    .line 143
    if-eq v1, v5, :cond_0

    .line 144
    if-eq v2, v5, :cond_0

    .line 145
    if-eq v3, v5, :cond_0

    .line 143
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 176
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fiio/music/util/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 180
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/fiio/music/util/b;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
