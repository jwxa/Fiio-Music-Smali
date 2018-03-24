.class final Lcom/fiio/music/activity/bv;
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
    iput-object p1, p0, Lcom/fiio/music/activity/bv;->a:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/bv;->b:Landroid/app/AlertDialog;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/fiio/music/activity/bv;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 690
    iget-object v0, p0, Lcom/fiio/music/activity/bv;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 691
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/bv;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/bv;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$46(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lcom/fiio/music/activity/bv;->a:Lcom/fiio/music/activity/ListMainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 694
    return-void
.end method
