.class final Lcom/fiio/music/activity/fi;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 3409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$94(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3426
    :goto_0
    return-void

    .line 3420
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3421
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 3423
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;

    move-result-object v0

    const-string v1, "playMainPageFlag"

    iget-object v2, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;I)V

    .line 3424
    iget-object v0, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fi;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    goto :goto_0
.end method
