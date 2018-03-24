.class final Lcom/c/a/bd;
.super Landroid/os/Handler;
.source "Stats.java"


# instance fields
.field private final a:Lcom/c/a/bc;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/c/a/bc;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    .line 133
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    sget-object v0, Lcom/c/a/aj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/c/a/be;

    invoke-direct {v1, p0, p1}, Lcom/c/a/be;-><init>(Lcom/c/a/bd;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    iget-wide v2, v0, Lcom/c/a/bc;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->d:J

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    iget-wide v2, v0, Lcom/c/a/bc;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->e:J

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lcom/c/a/bc;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/c/a/bc;->m:I

    iget-wide v4, v0, Lcom/c/a/bc;->g:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->g:J

    iget v1, v0, Lcom/c/a/bc;->m:I

    iget-wide v2, v0, Lcom/c/a/bc;->g:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->j:J

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lcom/c/a/bc;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/c/a/bc;->n:I

    iget-wide v4, v0, Lcom/c/a/bc;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->h:J

    iget v1, v0, Lcom/c/a/bc;->m:I

    iget-wide v2, v0, Lcom/c/a/bc;->h:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/bc;->k:J

    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v1, p0, Lcom/c/a/bd;->a:Lcom/c/a/bc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget v2, v1, Lcom/c/a/bc;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/c/a/bc;->l:I

    iget-wide v2, v1, Lcom/c/a/bc;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/c/a/bc;->f:J

    iget v0, v1, Lcom/c/a/bc;->l:I

    iget-wide v2, v1, Lcom/c/a/bc;->f:J

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/c/a/bc;->i:J

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
