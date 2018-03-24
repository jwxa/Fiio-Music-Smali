.class final Lcom/audlabs/vipereffect/d;
.super Ljava/lang/Thread;
.source "ViPEREffect.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/c;

.field private final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/c;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/d;->a:Lcom/audlabs/vipereffect/c;

    iput-object p2, p0, Lcom/audlabs/vipereffect/d;->b:Ljava/io/InputStream;

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 164
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    .line 166
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/audlabs/vipereffect/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/audlabs/vipereffect/ViPEREffect;->access$3(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/audlabs/vipereffect/ViPEREffect;->access$4()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    const-wide/16 v2, 0x28

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setViPERFromats red:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    return-void
.end method
