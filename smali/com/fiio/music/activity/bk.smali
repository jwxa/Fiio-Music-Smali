.class final Lcom/fiio/music/activity/bk;
.super Lcom/fiio/music/network/b/g;
.source "ListMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/network/bean/AddressResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bk;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 2793
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 2798
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/AddressResult;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIp response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/AddressResult;->getCode()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIp response code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/AddressResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/AddressResult;->getAddressData()Lcom/fiio/music/network/bean/AddressData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/AddressData;->getIp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/bk;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    invoke-static {}, Lcom/fiio/music/util/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIp sn = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ip = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : module = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/activity/bk;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v3, v0, v1, v2}, Lcom/fiio/music/activity/ListMainActivity;->sendSaleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
