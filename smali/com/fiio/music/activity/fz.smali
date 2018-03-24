.class final Lcom/fiio/music/activity/fz;
.super Ljava/lang/Object;
.source "RecentListActivity.java"

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
.field final synthetic a:Lcom/fiio/music/activity/RecentListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/RecentListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/RecentListActivity;->access$0(Lcom/fiio/music/activity/RecentListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    const/16 v2, 0xe

    const-string v4, "R"

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fiio/music/activity/RecentListActivity;->access$1(Lcom/fiio/music/activity/RecentListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/RecentListActivity;->access$0(Lcom/fiio/music/activity/RecentListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    const/16 v2, 0xf

    const-string v4, "F"

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fiio/music/activity/RecentListActivity;->access$1(Lcom/fiio/music/activity/RecentListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/RecentListActivity;->access$0(Lcom/fiio/music/activity/RecentListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/fiio/music/activity/fz;->a:Lcom/fiio/music/activity/RecentListActivity;

    const/16 v2, 0x11

    const-string v4, "A"

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fiio/music/activity/RecentListActivity;->access$1(Lcom/fiio/music/activity/RecentListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
