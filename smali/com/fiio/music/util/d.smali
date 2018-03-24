.class final Lcom/fiio/music/util/d;
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
    iput-object p1, p0, Lcom/fiio/music/util/d;->a:Lcom/fiio/music/util/b;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fiio/music/util/d;->a:Lcom/fiio/music/util/b;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/fiio/music/util/b;->a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothHeadset;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fiio/music/util/d;->a:Lcom/fiio/music/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/util/b;->a(Lcom/fiio/music/util/b;Landroid/bluetooth/BluetoothHeadset;)V

    .line 69
    :cond_0
    return-void
.end method
