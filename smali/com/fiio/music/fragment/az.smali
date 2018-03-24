.class final Lcom/fiio/music/fragment/az;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    new-instance v1, Lcom/fiio/music/util/cr;

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$18(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/util/cr;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabAFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$19(Lcom/fiio/music/fragment/TabAFm;I)V

    .line 281
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabAfm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    sget v1, Lcom/fiio/music/util/cn;->e:I

    if-ne v0, v1, :cond_3

    .line 284
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$20(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongName ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 304
    const-string v1, "zxy - - -"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " size  :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdLists : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$24(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabAFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void

    .line 288
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongName DESC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_3
    :try_start_2
    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-ne v0, v1, :cond_5

    .line 292
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$20(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v0

    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_4

    .line 293
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst DESC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 299
    :cond_5
    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v1, " SortsongFirst ASC"

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/az;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
