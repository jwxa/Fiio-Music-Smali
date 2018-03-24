.class final Lcom/fiio/music/activity/fn;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/fiio/music/activity/fn;->c:Lcom/fiio/music/custom/f;

    .line 4389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 4393
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/fn;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 4394
    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$1(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 4396
    new-instance v0, Lcom/b/a/b/a/f;

    invoke-direct {v0, v2, v2}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 4397
    iget-object v1, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$2(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/b/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4398
    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.delectcover"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4402
    iget-object v1, p0, Lcom/fiio/music/activity/fn;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4404
    iget-object v0, p0, Lcom/fiio/music/activity/fn;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 4405
    iget-object v0, p0, Lcom/fiio/music/activity/fn;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 4406
    return-void

    .line 4398
    :cond_0
    const-string v0, "FiiO"

    goto :goto_0

    .line 4399
    :cond_1
    const-string v0, "FiiO"

    goto :goto_1
.end method
