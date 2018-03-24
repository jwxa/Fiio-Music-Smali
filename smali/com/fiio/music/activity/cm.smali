.class final Lcom/fiio/music/activity/cm;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 656
    :sswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$6(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/content/Context;I)V

    goto :goto_0

    .line 659
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-class v2, Lcom/fiio/music/activity/SearchSongActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    const-string v1, "activity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 665
    :sswitch_2
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 669
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->H()Z

    move-result v0

    .line 671
    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c00f4

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->access$10(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/view/View;)V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->access$10(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 683
    :sswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$11(Lcom/fiio/music/activity/LocalMusicActivity;)V

    goto/16 :goto_0

    .line 686
    :sswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 694
    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->o()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_4

    .line 700
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    goto/16 :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$12(Lcom/fiio/music/activity/LocalMusicActivity;I)V

    goto/16 :goto_0

    .line 707
    :sswitch_5
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 715
    if-eqz v0, :cond_5

    .line 716
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 720
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto/16 :goto_0

    .line 724
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const-class v2, Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/fiio/music/activity/cm;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 654
    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_3
        0x7f0b0058 -> :sswitch_4
        0x7f0b005c -> :sswitch_2
        0x7f0b005d -> :sswitch_5
        0x7f0b01b7 -> :sswitch_1
        0x7f0b01ce -> :sswitch_0
        0x7f0b01d0 -> :sswitch_3
        0x7f0b020e -> :sswitch_6
    .end sparse-switch
.end method
