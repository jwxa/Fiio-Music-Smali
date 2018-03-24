.class final Lcom/fiio/music/activity/ew;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field a:J

.field b:Z

.field c:J

.field d:J

.field e:Z

.field f:Ljava/util/concurrent/ExecutorService;

.field final synthetic g:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-wide v2, p0, Lcom/fiio/music/activity/ew;->a:J

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ew;->b:Z

    .line 551
    iput-wide v2, p0, Lcom/fiio/music/activity/ew;->c:J

    .line 552
    iput-wide v2, p0, Lcom/fiio/music/activity/ew;->d:J

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/activity/ew;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    return-object v0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/fiio/music/activity/ew;->b:Z

    if-eqz v0, :cond_0

    .line 607
    div-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    .line 608
    iget-object v1, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/LyricAdapter;->getSentence(I)Lcom/fiio/music/i/a;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/activity/ew;->a:J

    .line 610
    iget-object v0, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-wide v2, p0, Lcom/fiio/music/activity/ew;->a:J

    long-to-int v1, v2

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/fiio/music/activity/ew;->a:J

    iget-object v4, p0, Lcom/fiio/music/activity/ew;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$80(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;JLjava/util/concurrent/ExecutorService;)V

    .line 612
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 557
    packed-switch p2, :pswitch_data_0

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 559
    :pswitch_0
    iget-boolean v0, p0, Lcom/fiio/music/activity/ew;->b:Z

    if-nez v0, :cond_0

    .line 560
    iput-boolean v1, p0, Lcom/fiio/music/activity/ew;->e:Z

    .line 561
    iget-object v0, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 562
    iput-boolean v2, p0, Lcom/fiio/music/activity/ew;->b:Z

    .line 563
    iget-object v0, p0, Lcom/fiio/music/activity/ew;->g:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$77(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/activity/ew;->c:J

    goto :goto_0

    .line 571
    :pswitch_1
    iget-boolean v0, p0, Lcom/fiio/music/activity/ew;->b:Z

    if-eqz v0, :cond_0

    .line 572
    iput-boolean v1, p0, Lcom/fiio/music/activity/ew;->b:Z

    .line 573
    iput-boolean v2, p0, Lcom/fiio/music/activity/ew;->e:Z

    .line 575
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ew;->f:Ljava/util/concurrent/ExecutorService;

    .line 576
    iget-object v0, p0, Lcom/fiio/music/activity/ew;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/activity/ex;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ex;-><init>(Lcom/fiio/music/activity/ew;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
