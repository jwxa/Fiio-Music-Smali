.class final Lcom/fiio/music/activity/ca;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Lcom/fiio/music/util/cd;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LoadingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ca;->a:Lcom/fiio/music/activity/LoadingActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/fiio/music/c/b;

    iget-object v1, p0, Lcom/fiio/music/activity/ca;->a:Lcom/fiio/music/activity/LoadingActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 50
    const-string v1, "isStartup"

    const-string v2, "false"

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/ca;->a:Lcom/fiio/music/activity/LoadingActivity;

    const-class v2, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    iget-object v1, p0, Lcom/fiio/music/activity/ca;->a:Lcom/fiio/music/activity/LoadingActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/fiio/music/activity/ca;->a:Lcom/fiio/music/activity/LoadingActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LoadingActivity;->finish()V

    .line 54
    return-void
.end method
