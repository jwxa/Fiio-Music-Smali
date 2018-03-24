.class final Lcom/fiio/music/activity/ev;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

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
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 540
    iget-object v0, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;

    move-result-object v0

    const-string v1, "playMainPageFlag"

    iget-object v2, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;I)V

    .line 544
    iget-object v0, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ev;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    .line 545
    return-void
.end method
