.class final Lcom/fiio/music/activity/cv;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/io/File;

.field private final synthetic e:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;Ljava/io/File;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iput p2, p0, Lcom/fiio/music/activity/cv;->b:I

    iput-object p3, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/fiio/music/activity/cv;->d:Ljava/io/File;

    iput-object p5, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    .line 4147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 4150
    iget v0, p0, Lcom/fiio/music/activity/cv;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4151
    new-instance v0, Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 4152
    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cv;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    .line 4153
    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    move-result v0

    .line 4154
    if-eqz v0, :cond_0

    .line 4155
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 4156
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 4177
    :cond_0
    :goto_0
    return-void

    .line 4158
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/cv;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4159
    new-instance v0, Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 4160
    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cv;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    .line 4161
    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    move-result v0

    .line 4162
    if-eqz v0, :cond_0

    .line 4163
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 4164
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    goto :goto_0

    .line 4166
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/cv;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4167
    new-instance v0, Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 4168
    iget-object v1, p0, Lcom/fiio/music/activity/cv;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cv;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    .line 4169
    iget-object v2, p0, Lcom/fiio/music/activity/cv;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    move-result v0

    .line 4170
    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 4172
    iget-object v0, p0, Lcom/fiio/music/activity/cv;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    goto :goto_0
.end method
