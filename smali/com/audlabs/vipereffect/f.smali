.class final Lcom/audlabs/vipereffect/f;
.super Ljava/lang/Thread;
.source "ViPEREffect.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/e;

.field private final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/e;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/f;->a:Lcom/audlabs/vipereffect/e;

    iput-object p2, p0, Lcom/audlabs/vipereffect/f;->b:Ljava/io/InputStream;

    .line 244
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 248
    .line 249
    const/high16 v0, 0x10000

    :try_start_0
    new-array v3, v0, [B

    move v0, v2

    .line 251
    :cond_0
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/audlabs/vipereffect/f;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 257
    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$8()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->access$9([B)V

    move v0, v1

    .line 264
    :goto_1
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$8()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 265
    const/4 v4, 0x0

    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$10()[B

    move-result-object v5

    sub-int/2addr v0, v1

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$11()Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$10()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$12()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v2

    .line 270
    goto :goto_0

    .line 261
    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    .line 271
    :cond_2
    const/4 v4, 0x0

    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$10()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const-string v1, "ViPERPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setViPERProcess red:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_3
    return-void
.end method
