.class final Lcom/fiio/music/activity/b;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/b;->a:Lcom/fiio/music/activity/AboutActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/b;->a:Lcom/fiio/music/activity/AboutActivity;

    .line 91
    const-class v2, Lcom/fiio/music/activity/OnlineFeedBackActivity;

    .line 90
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    iget-object v1, p0, Lcom/fiio/music/activity/b;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
