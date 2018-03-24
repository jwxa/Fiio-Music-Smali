.class final Lcom/fiio/music/activity/bw;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bw;->a:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/bw;->b:Landroid/app/AlertDialog;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 814
    iget-object v0, p0, Lcom/fiio/music/activity/bw;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 815
    iget-object v0, p0, Lcom/fiio/music/activity/bw;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 816
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/bw;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    iget-object v1, p0, Lcom/fiio/music/activity/bw;->a:Lcom/fiio/music/activity/ListMainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 818
    return-void
.end method
