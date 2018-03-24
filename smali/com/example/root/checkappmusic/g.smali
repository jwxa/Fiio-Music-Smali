.class final Lcom/example/root/checkappmusic/g;
.super Landroid/os/Handler;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/f;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    .line 762
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 767
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v1}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v2}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    iget v2, v2, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    iget-object v3, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v3}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrackBufferSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeRead(II)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V

    .line 780
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$26(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 781
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v1}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v2}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$27(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v3}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-static {v1, v2, v3}, Lcom/example/root/checkappmusic/PlayerUtil;->GetResampleBuffer([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$28(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$29(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v1}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$30([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V

    .line 795
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$31(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 797
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$32(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 844
    :cond_1
    :goto_1
    return-void

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v0}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v1}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/example/root/checkappmusic/PlayerUtil;->changMonoToStereo([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v2}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$27(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/example/root/checkappmusic/g;->a:Lcom/example/root/checkappmusic/f;

    invoke-static {v3}, Lcom/example/root/checkappmusic/f;->a(Lcom/example/root/checkappmusic/f;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-static {v1, v2, v3}, Lcom/example/root/checkappmusic/PlayerUtil;->GetResampleBuffer([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 840
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
