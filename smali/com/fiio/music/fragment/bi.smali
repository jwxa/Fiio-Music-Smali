.class final Lcom/fiio/music/fragment/bi;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method private constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/fragment/TabAFm;B)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/bi;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1039
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    new-instance v1, Lcom/fiio/music/util/cr;

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$18(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/util/cr;)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabAFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$19(Lcom/fiio/music/fragment/TabAFm;I)V

    .line 1045
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabAfm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1046
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :try_start_1
    sget v1, Lcom/fiio/music/util/cn;->e:I

    if-ne v0, v1, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$20(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongName ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    .line 1046
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    :try_start_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1069
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1074
    :goto_1
    return-void

    .line 1052
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongName DESC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1071
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1072
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1055
    :cond_3
    :try_start_5
    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-ne v0, v1, :cond_5

    .line 1056
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$20(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_4

    .line 1057
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1060
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst DESC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1063
    :cond_5
    if-nez v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bi;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
