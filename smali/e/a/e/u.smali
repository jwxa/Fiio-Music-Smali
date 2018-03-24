.class final Le/a/e/u;
.super Le/a/b;
.source "Http2Connection.java"

# interfaces
.implements Le/a/e/aa;


# instance fields
.field final a:Le/a/e/y;

.field final synthetic c:Le/a/e/j;


# direct methods
.method constructor <init>(Le/a/e/j;Le/a/e/y;)V
    .locals 4

    .prologue
    .line 556
    iput-object p1, p0, Le/a/e/u;->c:Le/a/e/j;

    .line 557
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Le/a/e/j;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iput-object p2, p0, Le/a/e/u;->a:Le/a/e/y;

    .line 559
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    .prologue
    .line 742
    if-nez p1, :cond_1

    .line 743
    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-wide v2, v0, Le/a/e/j;->k:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Le/a/e/j;->k:J

    .line 745
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 746
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 748
    :cond_1
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p1}, Le/a/e/j;->a(I)Le/a/e/ab;

    move-result-object v1

    .line 749
    if-eqz v1, :cond_0

    .line 750
    monitor-enter v1

    .line 751
    :try_start_1
    invoke-virtual {v1, p2, p3}, Le/a/e/ab;->a(J)V

    .line 752
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILe/a/e/b;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-static {p1}, Le/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p1, p2}, Le/a/e/j;->c(ILe/a/e/b;)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p1}, Le/a/e/j;->b(I)Le/a/e/ab;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0, p2}, Le/a/e/ab;->c(Le/a/e/b;)V

    goto :goto_0
.end method

.method public final a(ILf/j;)V
    .locals 5

    .prologue
    .line 722
    invoke-virtual {p2}, Lf/j;->g()I

    .line 727
    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v2, v2, Le/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Le/a/e/ab;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/e/ab;

    .line 729
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    const/4 v3, 0x1

    iput-boolean v3, v2, Le/a/e/j;->h:Z

    .line 730
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 734
    invoke-virtual {v3}, Le/a/e/ab;->a()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Le/a/e/ab;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    sget-object v4, Le/a/e/b;->e:Le/a/e/b;

    invoke-virtual {v3, v4}, Le/a/e/ab;->c(Le/a/e/b;)V

    .line 736
    iget-object v4, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v3}, Le/a/e/ab;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Le/a/e/j;->b(I)Le/a/e/ab;

    .line 733
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 739
    :cond_1
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p1, p2}, Le/a/e/j;->a(ILjava/util/List;)V

    .line 765
    return-void
.end method

.method public final a(Le/a/e/al;)V
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 661
    .line 662
    const/4 v0, 0x0

    .line 663
    iget-object v7, p0, Le/a/e/u;->c:Le/a/e/j;

    monitor-enter v7

    .line 664
    :try_start_0
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v2, v2, Le/a/e/j;->m:Le/a/e/al;

    invoke-virtual {v2}, Le/a/e/al;->d()I

    move-result v3

    .line 665
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v6, v2, Le/a/e/j;->m:Le/a/e/al;

    move v2, v1

    :goto_0
    const/16 v8, 0xa

    if-ge v2, v8, :cond_1

    invoke-virtual {p1, v2}, Le/a/e/al;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1, v2}, Le/a/e/al;->b(I)I

    move-result v8

    invoke-virtual {v6, v2, v8}, Le/a/e/al;->a(II)Le/a/e/al;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_1
    sget-object v2, Le/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Le/a/e/x;

    const-string v8, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v11, v11, Le/a/e/j;->e:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-direct {v6, p0, v8, v9, p1}, Le/a/e/x;-><init>(Le/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/al;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 668
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v2, v2, Le/a/e/j;->m:Le/a/e/al;

    invoke-virtual {v2}, Le/a/e/al;->d()I

    move-result v2

    .line 669
    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    if-eq v2, v3, :cond_5

    .line 670
    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 671
    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-boolean v6, v6, Le/a/e/j;->n:Z

    if-nez v6, :cond_2

    .line 672
    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v6, v2, v3}, Le/a/e/j;->a(J)V

    .line 673
    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    const/4 v8, 0x1

    iput-boolean v8, v6, Le/a/e/j;->n:Z

    .line 675
    :cond_2
    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v6, v6, Le/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 676
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v6, v6, Le/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Le/a/e/ab;

    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/e/ab;

    move-object v6, v0

    .line 679
    :goto_1
    sget-object v0, Le/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Le/a/e/w;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v12, v12, Le/a/e/j;->e:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v8, p0, v9, v10}, Le/a/e/w;-><init>(Le/a/e/u;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 684
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    if-eqz v6, :cond_3

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 686
    array-length v4, v6

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v1, v6, v0

    .line 687
    monitor-enter v1

    .line 688
    :try_start_1
    invoke-virtual {v1, v2, v3}, Le/a/e/ab;->a(J)V

    .line 689
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 689
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 692
    :cond_3
    return-void

    :cond_4
    move-object v6, v0

    goto :goto_1

    :cond_5
    move-wide v2, v4

    move-object v6, v0

    goto :goto_1
.end method

.method public final a(ZII)V
    .locals 1

    .prologue
    .line 710
    if-eqz p1, :cond_1

    .line 711
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2}, Le/a/e/j;->c(I)Le/a/e/ai;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Le/a/e/ai;->b()V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2, p3}, Le/a/e/j;->a(II)V

    goto :goto_0
.end method

.method public final a(ZILf/i;I)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-static {p2}, Le/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2, p3, p4, p1}, Le/a/e/j;->a(ILf/i;IZ)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2}, Le/a/e/j;->a(I)Le/a/e/ab;

    move-result-object v0

    .line 591
    if-nez v0, :cond_2

    .line 592
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    sget-object v1, Le/a/e/b;->b:Le/a/e/b;

    invoke-virtual {v0, p2, v1}, Le/a/e/j;->a(ILe/a/e/b;)V

    .line 593
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lf/i;->f(J)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {v0, p3, p4}, Le/a/e/ab;->a(Lf/i;I)V

    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {v0}, Le/a/e/ab;->i()V

    goto :goto_0
.end method

.method public final a(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-static {p2}, Le/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2, p3, p1}, Le/a/e/j;->a(ILjava/util/List;Z)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v6, p0, Le/a/e/u;->c:Le/a/e/j;

    monitor-enter v6

    .line 611
    :try_start_0
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-boolean v0, v0, Le/a/e/j;->h:Z

    if-eqz v0, :cond_2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 613
    :cond_2
    :try_start_1
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v0, p2}, Le/a/e/j;->a(I)Le/a/e/ab;

    move-result-object v0

    .line 615
    if-nez v0, :cond_5

    .line 617
    iget-object v0, p0, Le/a/e/u;->c:Le/a/e/j;

    iget v0, v0, Le/a/e/j;->f:I

    if-gt p2, v0, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 620
    :cond_3
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    iget v1, v1, Le/a/e/j;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 623
    :cond_4
    new-instance v0, Le/a/e/ab;

    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Le/a/e/ab;-><init>(ILe/a/e/j;ZZLjava/util/List;)V

    .line 625
    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    iput p2, v1, Le/a/e/j;->f:I

    .line 626
    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v1, v1, Le/a/e/j;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v1, Le/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/a/e/v;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v7, v7, Le/a/e/j;->e:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Le/a/e/v;-><init>(Le/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/ab;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 640
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :cond_5
    monitor-exit v6

    .line 645
    invoke-virtual {v0, p3}, Le/a/e/ab;->a(Ljava/util/List;)V

    .line 646
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Le/a/e/ab;->i()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    .line 562
    sget-object v0, Le/a/e/b;->c:Le/a/e/b;

    .line 563
    sget-object v2, Le/a/e/b;->c:Le/a/e/b;

    .line 565
    :try_start_0
    iget-object v1, p0, Le/a/e/u;->c:Le/a/e/j;

    iget-boolean v1, v1, Le/a/e/j;->b:Z

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Le/a/e/u;->a:Le/a/e/y;

    invoke-virtual {v1}, Le/a/e/y;->a()V

    .line 568
    :cond_0
    iget-object v1, p0, Le/a/e/u;->a:Le/a/e/y;

    invoke-virtual {v1, p0}, Le/a/e/y;->a(Le/a/e/aa;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    sget-object v0, Le/a/e/b;->a:Le/a/e/b;

    .line 571
    sget-object v1, Le/a/e/b;->f:Le/a/e/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :try_start_1
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v2, v0, v1}, Le/a/e/j;->a(Le/a/e/b;Le/a/e/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 580
    :goto_0
    iget-object v0, p0, Le/a/e/u;->a:Le/a/e/y;

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 581
    :goto_1
    return-void

    .line 573
    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Le/a/e/b;->b:Le/a/e/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :try_start_3
    sget-object v0, Le/a/e/b;->b:Le/a/e/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 577
    :try_start_4
    iget-object v2, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v2, v1, v0}, Le/a/e/j;->a(Le/a/e/b;Le/a/e/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 580
    :goto_2
    iget-object v0, p0, Le/a/e/u;->a:Le/a/e/y;

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 576
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 577
    :goto_3
    :try_start_5
    iget-object v3, p0, Le/a/e/u;->c:Le/a/e/j;

    invoke-virtual {v3, v1, v2}, Le/a/e/j;->a(Le/a/e/b;Le/a/e/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 580
    :goto_4
    iget-object v1, p0, Le/a/e/u;->a:Le/a/e/y;

    invoke-static {v1}, Le/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    .line 576
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
