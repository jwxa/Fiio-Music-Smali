.class final Lcom/fiio/music/activity/fm;
.super Lcom/fiio/music/network/b/g;
.source "PlayerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic c:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fm;->c:Lcom/fiio/music/entity/Song;

    .line 4114
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 4118
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchAndWriteLrc onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    iget-object v0, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d6

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4120
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const v4, 0x7f0c01d6

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchAndWriteLrc onResponse  response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->getLrc()Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchAndWriteLrc onResponse lrc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchCloudLrc onResponse lrc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/b/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    invoke-static {v1, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/fm;->c:Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/network/c/c;->a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "targetLrcPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetLrcPath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d6

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/b/a;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v2, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/network/b/a;->a(Z)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/fm;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
