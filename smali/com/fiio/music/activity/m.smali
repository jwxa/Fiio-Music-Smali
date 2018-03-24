.class final Lcom/fiio/music/activity/m;
.super Ljava/lang/Object;
.source "AddPlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AddPlayListActivity;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/m;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/m;->b:Landroid/app/AlertDialog;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fiio/music/activity/m;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 264
    return-void
.end method
