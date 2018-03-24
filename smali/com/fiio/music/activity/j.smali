.class final Lcom/fiio/music/activity/j;
.super Ljava/lang/Object;
.source "AddPlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AddPlayListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AddPlayListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/j;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fiio/music/activity/j;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    .line 171
    return-void
.end method
