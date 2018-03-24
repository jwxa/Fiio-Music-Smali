.class final Lcom/fiio/music/activity/bj;
.super Lcom/fiio/music/network/b/g;
.source "ListMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/entity/Activity;",
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
    iput-object p1, p0, Lcom/fiio/music/activity/bj;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 2743
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 2749
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

    .line 2751
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    check-cast p1, Lcom/fiio/music/entity/Activity;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/bj;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/ListMainActivity;->access$55(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Activity;)V

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response flag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->isFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->isFlag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u6d3b\u52a8\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/bj;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "FiiOMusic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "no"

    const-string v2, "NoAD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NO = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Activity NO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->getNO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->getNO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u901a\u77e5\u5df2\u53d1\u9001\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fiio/music/entity/Activity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Activity;)V

    goto/16 :goto_0
.end method
