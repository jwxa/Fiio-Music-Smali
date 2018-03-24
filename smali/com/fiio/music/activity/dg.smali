.class final Lcom/fiio/music/activity/dg;
.super Landroid/content/BroadcastReceiver;
.source "LocalMusicActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 2186
    iput-object p1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;B)V
    .locals 0

    .prologue
    .line 2186
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/dg;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 2191
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2192
    if-nez v0, :cond_2

    .line 2193
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$22(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2194
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$23(Lcom/fiio/music/activity/LocalMusicActivity;I)V

    .line 2195
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$24(Lcom/fiio/music/activity/LocalMusicActivity;I)V

    .line 2196
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$25(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$25(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$26(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2396
    :cond_1
    :goto_0
    return-void

    .line 2203
    :cond_2
    if-ne v0, v3, :cond_b

    .line 2204
    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$27(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    .line 2205
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2206
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$28(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2208
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$29(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$30(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2211
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$32(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2212
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$33(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$34(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2215
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2216
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 2217
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$32(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$33(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c00e5

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 2220
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2232
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    .line 2233
    const-string v0, "duration"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2234
    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2235
    if-lez v0, :cond_7

    .line 2236
    iget-object v2, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 2238
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2239
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$37(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/util/List;)V

    .line 2240
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$38(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$39(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$40(Lcom/fiio/music/activity/LocalMusicActivity;I)V

    .line 2242
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$18(Lcom/fiio/music/activity/LocalMusicActivity;)V

    goto/16 :goto_0

    .line 2221
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 2222
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2223
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 2224
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2225
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 2226
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2243
    :cond_b
    if-ne v0, v6, :cond_15

    .line 2244
    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$27(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    .line 2245
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2246
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$28(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2248
    :cond_c
    const-string v0, "currentPosition"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2249
    const-string v1, "duration"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2250
    if-lez v1, :cond_d

    .line 2251
    iget-object v2, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 2254
    :cond_d
    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2255
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$29(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$30(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2258
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$32(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$33(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$34(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 2262
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$32(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$33(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c00e5

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_12

    .line 2265
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2276
    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$37(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/util/List;)V

    .line 2277
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$38(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$39(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$40(Lcom/fiio/music/activity/LocalMusicActivity;I)V

    .line 2294
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    .line 2297
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 2298
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$41(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 2300
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$18(Lcom/fiio/music/activity/LocalMusicActivity;)V

    goto/16 :goto_0

    .line 2266
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_13

    .line 2267
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2268
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2269
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2270
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_10

    .line 2271
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2301
    :cond_15
    if-ne v0, v4, :cond_16

    .line 2303
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$18(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 2304
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2306
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2309
    :cond_16
    if-ne v0, v5, :cond_17

    .line 2310
    const-string v0, "percent"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 2313
    :cond_17
    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 2314
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    .line 2316
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    iput-boolean v3, v0, Lcom/fiio/music/fragment/TabAFm;->afterDel:Z

    goto/16 :goto_0

    .line 2320
    :cond_18
    const/16 v1, 0x11

    if-ne v0, v1, :cond_21

    .line 2324
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2325
    if-eqz v0, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2327
    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$41(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 2328
    if-eq v0, v4, :cond_19

    if-ne v0, v5, :cond_1d

    .line 2330
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1a

    .line 2331
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2332
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1b

    .line 2333
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2334
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 2335
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2336
    :cond_1c
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2340
    :cond_1d
    if-ne v0, v6, :cond_1

    .line 2342
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1e

    .line 2343
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2344
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1f

    .line 2345
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2346
    :cond_1f
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 2347
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2348
    :cond_20
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 2349
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2352
    :cond_21
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2b

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86\uff0c\uff0c\uff0c\uff0c\uff0ccurrentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$26(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 2358
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86***state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 2360
    iget-object v1, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$26(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2361
    if-eq v0, v4, :cond_22

    if-ne v0, v5, :cond_27

    .line 2362
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 2363
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2384
    :cond_23
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$41(Lcom/fiio/music/activity/LocalMusicActivity;)V

    goto/16 :goto_0

    .line 2364
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_25

    .line 2365
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 2366
    :cond_25
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_26

    .line 2367
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 2368
    :cond_26
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_23

    .line 2369
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 2373
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 2374
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 2375
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v6, :cond_29

    .line 2376
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 2377
    :cond_29
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2a

    .line 2378
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 2379
    :cond_2a
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_23

    .line 2380
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 2385
    :cond_2b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2c

    .line 2386
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/fragment/TabBFm;->setNeedRelist(Z)V

    .line 2387
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->relist()V

    .line 2390
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->reGetList()V

    .line 2391
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/fragment/TabDFm;->setNeedRelist(Z)V

    .line 2392
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->relist()V

    goto/16 :goto_0

    .line 2393
    :cond_2c
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/fiio/music/activity/dg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$43(Lcom/fiio/music/activity/LocalMusicActivity;)V

    goto/16 :goto_0
.end method
