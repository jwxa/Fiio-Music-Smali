.class public final Le/a/a/e;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field final a:J

.field final b:Le/am;

.field final c:Le/aq;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLe/am;Le/aq;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v6, p0, Le/a/a/e;->l:I

    .line 140
    iput-wide p1, p0, Le/a/a/e;->a:J

    .line 141
    iput-object p3, p0, Le/a/a/e;->b:Le/am;

    .line 142
    iput-object p4, p0, Le/a/a/e;->c:Le/aq;

    .line 144
    if-eqz p4, :cond_5

    .line 145
    invoke-virtual {p4}, Le/aq;->i()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/e;->i:J

    .line 146
    invoke-virtual {p4}, Le/aq;->j()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/e;->j:J

    .line 147
    invoke-virtual {p4}, Le/aq;->e()Le/y;

    move-result-object v1

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v1}, Le/y;->a()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    .line 149
    invoke-virtual {v1, v0}, Le/y;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v0}, Le/y;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {v4}, Le/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Le/a/a/e;->d:Ljava/util/Date;

    .line 153
    iput-object v4, p0, Le/a/a/e;->e:Ljava/lang/String;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-static {v4}, Le/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Le/a/a/e;->h:Ljava/util/Date;

    goto :goto_1

    .line 156
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    invoke-static {v4}, Le/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Le/a/a/e;->f:Ljava/util/Date;

    .line 158
    iput-object v4, p0, Le/a/a/e;->g:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    iput-object v4, p0, Le/a/a/e;->k:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-static {v4, v6}, Le/a/c/f;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Le/a/a/e;->l:I

    goto :goto_1

    .line 166
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Le/a/a/d;
    .locals 12

    .prologue
    .line 172
    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    if-nez v0, :cond_1

    new-instance v0, Le/a/a/d;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    .line 174
    :goto_0
    iget-object v1, v0, Le/a/a/d;->a:Le/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    invoke-virtual {v1}, Le/am;->g()Le/e;

    move-result-object v1

    invoke-virtual {v1}, Le/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Le/a/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    .line 179
    :cond_0
    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Le/a/a/e;->b:Le/am;

    invoke-virtual {v0}, Le/am;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v0}, Le/aq;->d()Le/x;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Le/a/a/d;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    invoke-static {v0, v1}, Le/a/a/d;->a(Le/aq;Le/am;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Le/a/a/d;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Le/a/a/e;->b:Le/am;

    invoke-virtual {v0}, Le/am;->g()Le/e;

    move-result-object v6

    invoke-virtual {v6}, Le/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Le/a/a/e;->b:Le/am;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    :cond_5
    new-instance v0, Le/a/a/d;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Le/a/a/e;->j:J

    iget-object v4, p0, Le/a/a/e;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    iget v2, p0, Le/a/a/e;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Le/a/a/e;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_8
    iget-wide v2, p0, Le/a/a/e;->j:J

    iget-wide v4, p0, Le/a/a/e;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Le/a/a/e;->a:J

    iget-wide v8, p0, Le/a/a/e;->j:J

    sub-long/2addr v4, v8

    add-long/2addr v0, v2

    add-long v8, v0, v4

    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v0}, Le/aq;->h()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Le/e;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_9
    :goto_3
    invoke-virtual {v6}, Le/e;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Le/e;->c()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_a
    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Le/e;->h()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Le/e;->h()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_b
    const-wide/16 v4, 0x0

    iget-object v7, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v7}, Le/aq;->h()Le/e;

    move-result-object v7

    invoke-virtual {v7}, Le/e;->f()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v6}, Le/e;->g()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Le/e;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_c
    invoke-virtual {v7}, Le/e;->a()Z

    move-result v6

    if-nez v6, :cond_17

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_17

    iget-object v4, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v4}, Le/aq;->g()Le/ar;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_d

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Le/ar;->a(Ljava/lang/String;Ljava/lang/String;)Le/ar;

    :cond_d
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_e

    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v0}, Le/aq;->h()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Le/a/a/e;->h:Ljava/util/Date;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_e

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Le/ar;->a(Ljava/lang/String;Ljava/lang/String;)Le/ar;

    :cond_e
    new-instance v0, Le/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v4}, Le/ar;->a()Le/aq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto/16 :goto_0

    :cond_f
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Le/a/a/e;->h:Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_11

    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_5
    iget-object v2, p0, Le/a/a/e;->h:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    const-wide/16 v0, 0x0

    goto/16 :goto_3

    :cond_11
    iget-wide v0, p0, Le/a/a/e;->j:J

    goto :goto_5

    :cond_12
    iget-object v0, p0, Le/a/a/e;->f:Ljava/util/Date;

    if-eqz v0, :cond_15

    iget-object v0, p0, Le/a/a/e;->c:Le/aq;

    invoke-virtual {v0}, Le/aq;->a()Le/am;

    move-result-object v0

    invoke-virtual {v0}, Le/am;->a()Le/aa;

    move-result-object v0

    invoke-virtual {v0}, Le/aa;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_13

    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_6
    iget-object v2, p0, Le/a/a/e;->f:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    goto/16 :goto_3

    :cond_13
    iget-wide v0, p0, Le/a/a/e;->i:J

    goto :goto_6

    :cond_14
    const-wide/16 v0, 0x0

    goto/16 :goto_3

    :cond_15
    const-wide/16 v0, 0x0

    goto/16 :goto_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_4

    :cond_17
    iget-object v0, p0, Le/a/a/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, "If-None-Match"

    iget-object v0, p0, Le/a/a/e;->k:Ljava/lang/String;

    :goto_7
    iget-object v2, p0, Le/a/a/e;->b:Le/am;

    invoke-virtual {v2}, Le/am;->c()Le/y;

    move-result-object v2

    invoke-virtual {v2}, Le/y;->b()Le/z;

    move-result-object v2

    sget-object v3, Le/a/a;->a:Le/a/a;

    invoke-virtual {v3, v2, v1, v0}, Le/a/a;->a(Le/z;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/e;->b:Le/am;

    invoke-virtual {v0}, Le/am;->f()Le/an;

    move-result-object v0

    invoke-virtual {v2}, Le/z;->a()Le/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/an;->a(Le/y;)Le/an;

    move-result-object v0

    invoke-virtual {v0}, Le/an;->a()Le/am;

    move-result-object v1

    new-instance v0, Le/a/a/d;

    iget-object v2, p0, Le/a/a/e;->c:Le/aq;

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Le/a/a/e;->f:Ljava/util/Date;

    if-eqz v0, :cond_19

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Le/a/a/e;->g:Ljava/lang/String;

    goto :goto_7

    :cond_19
    iget-object v0, p0, Le/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_1a

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Le/a/a/e;->e:Ljava/lang/String;

    goto :goto_7

    :cond_1a
    new-instance v0, Le/a/a/d;

    iget-object v1, p0, Le/a/a/e;->b:Le/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/d;-><init>(Le/am;Le/aq;)V

    goto/16 :goto_0
.end method
