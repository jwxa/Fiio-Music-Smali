.class final Lcom/fiio/music/service/y;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method public constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 3047
    iput-object p1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3050
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 3054
    monitor-enter p0

    .line 3058
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3063
    :goto_0
    :try_start_1
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "running GetNextSong Runnable"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3099
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->c(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V

    .line 3103
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Y(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3105
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_3

    .line 3106
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->c(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 3054
    :goto_2
    monitor-exit p0

    return-void

    .line 3061
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3054
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3068
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3069
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 3070
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/af;->c(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3071
    if-eqz v0, :cond_2

    .line 3072
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3073
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Landroid/content/Context;)Lcom/fiio/music/util/j;

    move-result-object v0

    .line 3074
    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V

    .line 3075
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->Y(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    :goto_3
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "folder peek next Song : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->Y(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3078
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, v2, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V

    goto :goto_3

    .line 3084
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_1

    .line 3089
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->Z(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->c()Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3091
    :try_start_3
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->Z(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/a;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->Q(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/a;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3094
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 3108
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->c(Lcom/fiio/music/service/MediaPlayerService;I)V

    goto/16 :goto_2

    .line 3112
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/y;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->c(Lcom/fiio/music/service/MediaPlayerService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 3064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
