.class final Lcom/fiio/music/activity/er;
.super Lcom/fiio/music/network/b/g;
.source "OnlineFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/entity/OnlineFeedBackResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/OnlineFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    .line 282
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 290
    :cond_0
    new-instance v0, Lcom/fiio/music/util/bn;

    iget-object v1, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bn;-><init>(Landroid/app/Activity;Z)V

    .line 292
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, Lcom/fiio/music/entity/OnlineFeedBackResponse;

    iget-object v0, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->e(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/fiio/music/util/bn;

    iget-object v1, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bn;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/entity/OnlineFeedBackResponse;->getCode()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/fiio/music/util/bn;

    iget-object v1, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bn;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/fiio/music/util/bn;

    iget-object v1, p0, Lcom/fiio/music/activity/er;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bn;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
