.class final Lcom/fiio/music/activity/u;
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
    iput-object p1, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    iput-object p2, p0, Lcom/fiio/music/activity/u;->b:Lcom/fiio/music/d/a/d;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/u;->b:Lcom/fiio/music/d/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/u;->b:Lcom/fiio/music/d/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v1}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/DlnaFirstFragment;->updateDevAdapter(Ljava/util/ArrayList;)V

    .line 378
    :cond_0
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDevList.add(di)="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/u;->a:Lcom/fiio/music/activity/t;

    invoke-static {v2}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    return-void
.end method
