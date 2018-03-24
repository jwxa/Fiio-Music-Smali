.class final Lcom/fiio/music/activity/az;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Lcom/fiio/music/adapter/MenuAdapter$ItemListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/az;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/fiio/music/activity/az;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$47(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/custom/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/j;->c()V

    .line 1446
    iget-object v0, p0, Lcom/fiio/music/activity/az;->a:Lcom/fiio/music/activity/ListMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fiio/music/activity/az;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v3, Lcom/fiio/music/activity/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1447
    return-void
.end method
