.class final Lcom/fiio/music/activity/v;
.super Ljava/lang/Object;
.source "DlnaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/t;

.field private final synthetic b:Lcom/fiio/music/d/a/d;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/t;Lcom/fiio/music/d/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    iput-object p2, p0, Lcom/fiio/music/activity/v;->b:Lcom/fiio/music/d/a/d;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/v;->b:Lcom/fiio/music/d/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/v;->a:Lcom/fiio/music/activity/t;

    invoke-static {v1}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/DlnaFirstFragment;->updateDevAdapter(Ljava/util/ArrayList;)V

    .line 393
    :cond_0
    return-void
.end method
