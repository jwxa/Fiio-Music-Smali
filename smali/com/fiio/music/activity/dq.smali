.class final Lcom/fiio/music/activity/dq;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/swipemenulistview/a;I)Z
    .locals 11

    .prologue
    const v2, 0x7f04002a

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1141
    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/a;->c()Landroid/view/View;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 1143
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1144
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1145
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1146
    packed-switch p3, :pswitch_data_0

    .line 1233
    :cond_0
    :goto_0
    return v10

    .line 1149
    :pswitch_0
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v6

    .line 1151
    invoke-virtual {v6}, Lcom/fiio/music/custom/f;->show()V

    .line 1152
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 1153
    invoke-virtual {v6}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1162
    :cond_1
    :goto_1
    const v0, 0x7f0b0079

    invoke-virtual {v6, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1163
    const v1, 0x7f0b007e

    invoke-virtual {v6, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 1164
    const v1, 0x7f0b007d

    invoke-virtual {v6, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 1166
    if-nez p1, :cond_5

    .line 1167
    iget-object v1, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1168
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    :goto_2
    new-instance v0, Lcom/fiio/music/activity/dr;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/activity/dr;-><init>(Lcom/fiio/music/activity/dq;ILjava/lang/String;ILjava/lang/String;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    new-instance v0, Lcom/fiio/music/activity/ds;

    invoke-direct {v0, p0, v6}, Lcom/fiio/music/activity/ds;-><init>(Lcom/fiio/music/activity/dq;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1155
    invoke-virtual {v6}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1157
    invoke-virtual {v6}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 1158
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1159
    invoke-virtual {v6}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_1

    .line 1170
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1171
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1220
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1224
    :pswitch_2
    if-lez p1, :cond_6

    .line 1225
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0, v9, v4, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->access$0(Lcom/fiio/music/activity/MyMusicListActivity;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1226
    :cond_6
    if-nez p1, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1228
    iget-object v3, p0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1227
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
