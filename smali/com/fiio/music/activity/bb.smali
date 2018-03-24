.class final Lcom/fiio/music/activity/bb;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bb;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1833
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/bb;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/SearchSongActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1834
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/bb;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$46(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1835
    const-string v1, "activity"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1836
    iget-object v1, p0, Lcom/fiio/music/activity/bb;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1837
    return-void
.end method
