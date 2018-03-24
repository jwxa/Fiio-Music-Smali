.class final Lcom/fiio/music/activity/by;
.super Landroid/content/BroadcastReceiver;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/ListMainActivity;B)V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/by;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1257
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1259
    if-nez v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$8(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1262
    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$9(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Song;)V

    .line 1263
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    iput v1, v0, Lcom/fiio/music/activity/ListMainActivity;->songRealId:I

    .line 1265
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$11(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$12(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$13(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$14(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1271
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$15(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$16(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1273
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$17(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$18(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1274
    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v4

    .line 1273
    invoke-static {p1, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_3

    .line 1281
    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumShow(Lcom/fiio/music/entity/Song;)V

    .line 1284
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$19(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    .line 1286
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$20(Lcom/fiio/music/activity/ListMainActivity;Ljava/util/List;)V

    .line 1288
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$21(Lcom/fiio/music/activity/ListMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$22(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$23(Lcom/fiio/music/activity/ListMainActivity;I)V

    goto/16 :goto_0

    .line 1276
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$17(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$18(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1289
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1290
    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$9(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Song;)V

    .line 1291
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1292
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    iput v1, v0, Lcom/fiio/music/activity/ListMainActivity;->songRealId:I

    .line 1293
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$11(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1295
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$12(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$13(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$14(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1298
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$15(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$16(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1300
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$17(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$18(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1301
    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/ListMainActivity;->access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v4

    .line 1300
    invoke-static {p1, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1307
    if-eqz v0, :cond_8

    .line 1308
    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumShow(Lcom/fiio/music/entity/Song;)V

    .line 1310
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    .line 1311
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$20(Lcom/fiio/music/activity/ListMainActivity;Ljava/util/List;)V

    .line 1313
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$21(Lcom/fiio/music/activity/ListMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$22(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$23(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1314
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    goto/16 :goto_0

    .line 1303
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$17(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$18(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1316
    :cond_a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 1318
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u81ea\u52a8\u5207\u6b4c\u64ad\u653e\uff0c\u66f4\u65b0\u524d\u53f0\u6b4c\u66f2\u5217\u8868?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->access$9(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 1320
    :cond_b
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1324
    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86\uff0c\uff0c\uff0c\uff0c\uff0ccurrentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$24(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86***state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    goto/16 :goto_0

    .line 1329
    :cond_c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "receive broadcast --- isPlaying"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v0, "is"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1333
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- boolean Extra isOpen : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    if-eqz v0, :cond_d

    .line 1335
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->T()V

    goto/16 :goto_0

    .line 1337
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/by;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->U()V

    goto/16 :goto_0
.end method
