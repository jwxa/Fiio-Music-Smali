.class final Lcom/fiio/music/activity/go;
.super Landroid/os/Handler;
.source "ScanningActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanningActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanningActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const v8, 0x186a0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0c00d2

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    const-string v1, "sum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    const-string v2, "count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    const-string v3, "filterCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    add-int/lit8 v3, v1, 0x1

    div-int v3, v8, v3

    .line 202
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 204
    :sswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanningActivity;->f(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    add-int/2addr v0, v2

    mul-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 208
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->g(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :sswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->f(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 212
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    const v3, 0x7f0c00d3

    invoke-virtual {v1, v3}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->h(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ScanningActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {}, Lcom/fiio/music/activity/ScanningActivity;->a()V

    .line 215
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->g(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "flag"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanningActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 223
    :sswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v1, v5}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :sswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->i(Lcom/fiio/music/activity/ScanningActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanningActivity;->a(Lcom/fiio/music/activity/ScanningActivity;I)V

    .line 227
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->i(Lcom/fiio/music/activity/ScanningActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-ne v0, v7, :cond_1

    .line 228
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v1, v5}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->i(Lcom/fiio/music/activity/ScanningActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v2, v5}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->i(Lcom/fiio/music/activity/ScanningActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 232
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v2, v5}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v2, v5}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :sswitch_5
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->f(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    mul-int v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 241
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->g(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 244
    :sswitch_6
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->f(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 245
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->e(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    const v3, 0x7f0c00d3

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/ScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->h(Lcom/fiio/music/activity/ScanningActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ScanningActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-static {}, Lcom/fiio/music/activity/ScanningActivity;->a()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v1, "flag"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanningActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ScanningActivity;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    const-string v0, "long"

    const-string v1, "wakeLock.release();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :sswitch_7
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanningActivity;->j(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/c/b;

    move-result-object v1

    const-string v2, "sdCardStatus"

    invoke-virtual {v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanningActivity;->a(Lcom/fiio/music/activity/ScanningActivity;Ljava/lang/String;)V

    .line 258
    const-string v0, "EJECT"

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanningActivity;->k(Lcom/fiio/music/activity/ScanningActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ScanningActivity;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 260
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanningActivity;->finish()V

    goto/16 :goto_0

    .line 261
    :cond_4
    const-string v0, "MOUNTED"

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanningActivity;->k(Lcom/fiio/music/activity/ScanningActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lcom/fiio/music/activity/gq;

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0, v1}, Lcom/fiio/music/activity/gq;-><init>(Lcom/fiio/music/activity/ScanningActivity;)V

    .line 263
    invoke-virtual {v0}, Lcom/fiio/music/activity/gq;->start()V

    .line 264
    iget-object v0, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanningActivity;->j(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/c/b;

    move-result-object v0

    const-string v1, "sdCardStatusChanged"

    invoke-virtual {v0, v1, v6}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 265
    invoke-static {}, Lcom/fiio/music/widget/t;->a()Lcom/fiio/music/widget/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/go;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanningActivity;->l(Lcom/fiio/music/activity/ScanningActivity;)Lcom/fiio/music/activity/gq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/t;->a(Ljava/lang/Thread;)V

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x63 -> :sswitch_7
    .end sparse-switch
.end method
