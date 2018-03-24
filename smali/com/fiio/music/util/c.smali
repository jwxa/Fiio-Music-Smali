.class final Lcom/fiio/music/util/c;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/b;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/c;->a:Lcom/fiio/music/util/b;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/fiio/music/util/c;->a:Lcom/fiio/music/util/b;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/fiio/music/util/b;->a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothA2dp;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/fiio/music/util/c;->a:Lcom/fiio/music/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/util/b;->a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothA2dp;)V

    .line 53
    :cond_0
    return-void
.end method
