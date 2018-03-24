.class final Lcom/fiio/music/util/bi;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/bh;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/bh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 971
    new-instance v1, Lcom/fiio/music/b/b;

    iget-object v0, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v0}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 972
    new-instance v4, Lcom/fiio/music/b/c;

    iget-object v0, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v0}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 973
    new-instance v5, Lcom/fiio/music/b/l;

    iget-object v0, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v0}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 974
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v6, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v6}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-virtual {v5}, Lcom/fiio/music/b/l;->b()Ljava/util/List;

    move-result-object v0

    .line 976
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    invoke-virtual {v1}, Lcom/fiio/music/b/b;->d()Ljava/util/List;

    move-result-object v0

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    invoke-virtual {v4}, Lcom/fiio/music/b/c;->b()Ljava/util/List;

    move-result-object v0

    .line 988
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 992
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u66f4\u65b0\u6570\u636e\u5e93\u8017\u65f6="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    sput-boolean v9, Lcom/fiio/music/util/bh;->b:Z

    .line 995
    sput-boolean v9, Lcom/fiio/music/c/b;->a:Z

    .line 996
    return-void

    .line 976
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 977
    const-string v7, "styleid"

    iget-object v8, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v8}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v7

    .line 978
    invoke-virtual {v5, v0, v7}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 982
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 983
    const-string v6, "albumid"

    iget-object v7, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v7}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v6

    .line 984
    invoke-virtual {v1, v0, v6}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_1

    .line 988
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 989
    const-string v5, "artistid"

    iget-object v6, p0, Lcom/fiio/music/util/bi;->a:Lcom/fiio/music/util/bh;

    invoke-static {v6}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/util/bh;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v5

    .line 990
    invoke-virtual {v4, v0, v5}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_2
.end method
