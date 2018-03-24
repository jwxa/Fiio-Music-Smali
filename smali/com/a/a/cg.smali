.class final Lcom/a/a/cg;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method static a(Lcom/a/a/d/a;)Lcom/a/a/ba;
    .locals 2

    .prologue
    .line 36
    const/4 v1, 0x1

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {p0}, Lcom/a/a/cg;->b(Lcom/a/a/d/a;)Lcom/a/a/ba;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/a/a/d/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lcom/a/a/bb;

    invoke-direct {v1, v0}, Lcom/a/a/bb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    new-instance v1, Lcom/a/a/bb;

    invoke-direct {v1, v0}, Lcom/a/a/bb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :catch_3
    move-exception v0

    .line 55
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lcom/a/a/ba;ZLcom/a/a/d/e;)V
    .locals 4

    .prologue
    .line 101
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/a/a/d/e;->g()Lcom/a/a/d/e;

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/ba;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/a/a/ba;->u()Lcom/a/a/bg;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/a/a/bg;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v0}, Lcom/a/a/bg;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/a/a/d/e;->a(Ljava/lang/Number;)Lcom/a/a/d/e;

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/a/a/bg;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {v0}, Lcom/a/a/bg;->m()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/a/a/d/e;->c(Z)Lcom/a/a/d/e;

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/a/a/bg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/a/a/d/e;->c(Ljava/lang/String;)Lcom/a/a/d/e;

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/a/a/ba;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    invoke-virtual {p2}, Lcom/a/a/d/e;->c()Lcom/a/a/d/e;

    .line 118
    invoke-virtual {p0}, Lcom/a/a/ba;->t()Lcom/a/a/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/at;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ba;

    .line 120
    invoke-virtual {v0}, Lcom/a/a/ba;->r()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    invoke-virtual {p2}, Lcom/a/a/d/e;->g()Lcom/a/a/d/e;

    goto :goto_1

    .line 124
    :cond_6
    invoke-static {v0, p1, p2}, Lcom/a/a/cg;->a(Lcom/a/a/ba;ZLcom/a/a/d/e;)V

    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p2}, Lcom/a/a/d/e;->d()Lcom/a/a/d/e;

    goto :goto_0

    .line 128
    :cond_8
    invoke-virtual {p0}, Lcom/a/a/ba;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 129
    invoke-virtual {p2}, Lcom/a/a/d/e;->e()Lcom/a/a/d/e;

    .line 130
    invoke-virtual {p0}, Lcom/a/a/ba;->s()Lcom/a/a/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/bd;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/ba;

    .line 132
    if-nez p1, :cond_a

    invoke-virtual {v1}, Lcom/a/a/ba;->r()Z

    move-result v3

    if-nez v3, :cond_9

    .line 133
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/a/a/d/e;->b(Ljava/lang/String;)Lcom/a/a/d/e;

    .line 136
    invoke-static {v1, p1, p2}, Lcom/a/a/cg;->a(Lcom/a/a/ba;ZLcom/a/a/d/e;)V

    goto :goto_2

    .line 138
    :cond_b
    invoke-virtual {p2}, Lcom/a/a/d/e;->f()Lcom/a/a/d/e;

    goto/16 :goto_0

    .line 141
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/a/a/d/a;)Lcom/a/a/ba;
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/a/a/ch;->a:[I

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/d/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/a/a/bg;

    invoke-virtual {p0}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-object v0

    .line 64
    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v0, Lcom/a/a/bg;

    invoke-static {v1}, Lcom/a/a/bg;->a(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Lcom/a/a/bg;

    invoke-virtual {p0}, Lcom/a/a/d/a;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p0}, Lcom/a/a/d/a;->k()V

    .line 70
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_4
    new-instance v0, Lcom/a/a/at;

    invoke-direct {v0}, Lcom/a/a/at;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/a/a/d/a;->b()V

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/a/a/cg;->b(Lcom/a/a/d/a;)Lcom/a/a/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/at;->a(Lcom/a/a/ba;)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->c()V

    goto :goto_0

    .line 80
    :pswitch_5
    new-instance v0, Lcom/a/a/bd;

    invoke-direct {v0}, Lcom/a/a/bd;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/a/a/d/a;->d()V

    .line 82
    :goto_2
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/a/a/cg;->b(Lcom/a/a/d/a;)Lcom/a/a/ba;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Lcom/a/a/ba;)V

    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/d/a;->e()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
