.class final Lcom/fiio/music/activity/fp;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/g/a;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$11(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$12(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 856
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 858
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/h/e;->a(J)V

    .line 859
    iget-object v0, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fp;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$16(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 861
    :cond_0
    return-void
.end method
