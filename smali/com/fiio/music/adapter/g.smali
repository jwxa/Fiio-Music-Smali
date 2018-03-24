.class final Lcom/fiio/music/adapter/g;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/f;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/f;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iput-object p2, p0, Lcom/fiio/music/adapter/g;->b:Lcom/fiio/music/custom/f;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 758
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 760
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/FileListAdapter;->selectItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->multiSetDataAfterDelInFileItemAdapter(Ljava/util/List;)V

    .line 792
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v1, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    invoke-static {v1}, Lcom/fiio/music/adapter/f;->a(Lcom/fiio/music/adapter/f;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v2, v2, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    .line 793
    iget-object v3, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v3, v3, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/f;->a(Lcom/fiio/music/adapter/f;Landroid/widget/Toast;)V

    .line 795
    :cond_0
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->b(Z)V

    .line 796
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->cancelSelect()V

    .line 797
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 798
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 799
    return-void

    .line 760
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    iget-object v1, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v1, v1, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 762
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    if-eqz v1, :cond_2

    .line 765
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 766
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    .line 770
    :cond_2
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 771
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_3
    :goto_1
    invoke-static {v9}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    goto/16 :goto_0

    .line 772
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/fiio/music/adapter/FileListAdapter;->access$7()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 774
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->E()V

    .line 783
    :cond_6
    :goto_2
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 784
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 776
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 778
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 779
    iget-object v0, p0, Lcom/fiio/music/adapter/g;->a:Lcom/fiio/music/adapter/f;

    iget-object v0, v0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
