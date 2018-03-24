.class final Lcom/fiio/music/fragment/b;
.super Ljava/lang/Object;
.source "DlnaFirstFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/DlnaFirstFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/DlnaFirstFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/b;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fiio/music/fragment/b;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$3(Lcom/fiio/music/fragment/DlnaFirstFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/DlnaActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/DlnaActivity;->searchNetwork()V

    .line 108
    return-void
.end method
