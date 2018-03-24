.class final Lcom/fiio/music/activity/fv;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 2173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 2219
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0b024c

    if-ne v0, v1, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$52(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2224
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 2210
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0b024c

    if-ne v0, v1, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$49(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 2212
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 2181
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2182
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/16 v0, 0x320

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0b024c

    if-ne v0, v1, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$49(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 2192
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2195
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2197
    iget-object v1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->p()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    if-lt v0, v1, :cond_3

    .line 2198
    iget-object v0, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto :goto_0

    .line 2199
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 2200
    iget-object v1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$50(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2202
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 2203
    iget-object v1, p0, Lcom/fiio/music/activity/fv;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$51(Lcom/fiio/music/activity/PlayerMainActivity;J)V

    goto :goto_0
.end method
