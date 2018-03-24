.class final Lcom/fiio/music/activity/fs;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/h/j;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    .prologue
    const v2, 0x7f04002a

    .line 2056
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2164
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2060
    :sswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2063
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2064
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2065
    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2069
    :sswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 2070
    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01e0

    if-ne v0, v1, :cond_1

    .line 2074
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->d()V

    .line 2075
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    goto :goto_0

    .line 2076
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01dd

    if-ne v0, v1, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->c()V

    .line 2078
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    goto :goto_0

    .line 2083
    :sswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->e()V

    .line 2084
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2087
    :sswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->increaseLyricFontSize()V

    .line 2088
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter;->getLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$47(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 2089
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2092
    :sswitch_5
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->decreaseLyricFontSize()V

    .line 2093
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter;->getLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$47(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 2094
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2097
    :sswitch_6
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2100
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 2101
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 2102
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 2103
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2104
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 2117
    :cond_2
    :goto_1
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2118
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2119
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2121
    iget-object v4, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2122
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2123
    new-instance v0, Lcom/fiio/music/activity/ft;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/ft;-><init>(Lcom/fiio/music/activity/fs;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2138
    new-instance v0, Lcom/fiio/music/activity/fu;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/fu;-><init>(Lcom/fiio/music/activity/fs;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2106
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2107
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 2109
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2110
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 2112
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2113
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 2147
    :sswitch_7
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;)Z

    move-result v0

    .line 2151
    if-eqz v0, :cond_6

    .line 2152
    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    const v0, 0x7f0c01e2

    invoke-static {v0}, Lcom/fiio/a/a/b;->a(I)V

    goto/16 :goto_0

    .line 2156
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2157
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2158
    iget-object v1, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2163
    :sswitch_8
    iget-object v0, p0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$48(Lcom/fiio/music/activity/PlayerMainActivity;)V

    goto/16 :goto_0

    .line 2056
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d7 -> :sswitch_1
        0x7f0b01da -> :sswitch_7
        0x7f0b01dd -> :sswitch_2
        0x7f0b01e0 -> :sswitch_2
        0x7f0b01e3 -> :sswitch_3
        0x7f0b01e6 -> :sswitch_4
        0x7f0b01e9 -> :sswitch_5
        0x7f0b01ec -> :sswitch_6
        0x7f0b01ef -> :sswitch_0
        0x7f0b01f2 -> :sswitch_8
    .end sparse-switch
.end method
