.class final Lcom/fiio/music/activity/gg;
.super Ljava/lang/Object;
.source "ScanMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 74
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    const-class v2, Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanMusicActivity;->a(Lcom/fiio/music/activity/ScanMusicActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/ScanMusicActivity;->setResult(I)V

    .line 78
    iget-object v0, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanMusicActivity;->finish()V

    goto :goto_0

    .line 82
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    const-class v2, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "rs"

    const-string v2, "$"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanMusicActivity;->a(Lcom/fiio/music/activity/ScanMusicActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/ScanMusicActivity;->setResult(I)V

    .line 87
    iget-object v0, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanMusicActivity;->finish()V

    goto :goto_0

    .line 90
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    const-class v2, Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanMusicActivity;->a(Lcom/fiio/music/activity/ScanMusicActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/fiio/music/activity/gg;->a:Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x7f0b027c -> :sswitch_2
        0x7f0b027d -> :sswitch_1
        0x7f0b027e -> :sswitch_0
        0x7f0b0288 -> :sswitch_1
        0x7f0b0289 -> :sswitch_0
    .end sparse-switch
.end method
