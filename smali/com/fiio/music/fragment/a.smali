.class final Lcom/fiio/music/fragment/a;
.super Ljava/lang/Object;
.source "DlnaFirstFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/DlnaFirstFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/DlnaFirstFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$1(Lcom/fiio/music/fragment/DlnaFirstFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$1(Lcom/fiio/music/fragment/DlnaFirstFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$1(Lcom/fiio/music/fragment/DlnaFirstFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/d;

    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    .line 96
    iget-object v0, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$2(Lcom/fiio/music/fragment/DlnaFirstFragment;)Lcom/fiio/music/fragment/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/c;->notifyDataSetChanged()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/a;->a:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->access$3(Lcom/fiio/music/fragment/DlnaFirstFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/DlnaActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/DlnaActivity;->commitToFileListFragment()V

    .line 99
    return-void
.end method
