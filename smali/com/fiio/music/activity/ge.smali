.class final Lcom/fiio/music/activity/ge;
.super Ljava/lang/Object;
.source "ScanDirectoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanDirectoryActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const v6, 0x7f0c000e

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 182
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    const-class v2, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v1, "rs"

    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->c(Lcom/fiio/music/activity/ScanDirectoryActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->c(Lcom/fiio/music/activity/ScanDirectoryActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 186
    const-string v1, "rsvalue"

    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->c(Lcom/fiio/music/activity/ScanDirectoryActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->finish()V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 195
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v2, "zengxy - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insideFile :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->f(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 201
    const-string v2, "zengxy - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currrentFile :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 204
    :cond_2
    const-string v2, "zengxy - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insideSelectorAllState :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckState(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteOneCheckState(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v3, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 220
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 221
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    :goto_2
    if-eqz v1, :cond_9

    .line 236
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckState(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 223
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 229
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0, v3}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v3, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 226
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteOneCheckState(Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :sswitch_2
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 250
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 251
    :goto_5
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 255
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->addCheckFilePath(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckAllState(Ljava/io/File;)V

    .line 265
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 252
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ScanListAdapter;->getItem(I)Lcom/fiio/music/entity/ScanData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 253
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    move v1, v0

    .line 258
    :goto_7
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_c

    .line 262
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->cutCheckFilePath(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteCheckAllState(Ljava/io/File;)V

    goto :goto_6

    .line 259
    :cond_c
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->getItem(I)Lcom/fiio/music/entity/ScanData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 260
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 270
    :cond_d
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 271
    :goto_8
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 275
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 276
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->addCheckFilePathForAll(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckAllStateForOnly(Ljava/util/ArrayList;)V

    .line 278
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAllForOnly(Ljava/util/ArrayList;)Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 272
    :cond_e
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ScanListAdapter;->getItem(I)Lcom/fiio/music/entity/ScanData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 273
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 282
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->addCheckFilePath(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckAllState(Ljava/io/File;)V

    .line 284
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_10
    move v1, v0

    .line 289
    :goto_9
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 293
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 294
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->cutCheckFilePath(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteCheckAllStateForOnly(Ljava/util/ArrayList;)V

    .line 296
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAllForOnly(Ljava/util/ArrayList;)Z

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v1, v6}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    :cond_11
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->getItem(I)Lcom/fiio/music/entity/ScanData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 291
    iget-object v2, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->cutCheckFilePath(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteCheckAllState(Ljava/io/File;)V

    .line 302
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ge;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x7f0b0096 -> :sswitch_1
        0x7f0b0280 -> :sswitch_2
        0x7f0b0284 -> :sswitch_0
    .end sparse-switch
.end method
