.class public Lcom/fiio/music/activity/BaseActivity$CommonRecevier;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fiio/music/activity/BaseActivity$CommonRecevier;->a:Lcom/fiio/music/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/activity/BaseActivity$CommonRecevier;->a:Lcom/fiio/music/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/BaseActivity;->finish()V

    .line 90
    return-void
.end method
