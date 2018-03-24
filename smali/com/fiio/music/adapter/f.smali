.class final Lcom/fiio/music/adapter/f;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/FileListAdapter;

.field private b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/FileListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/adapter/f;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/adapter/f;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0b0065

    const v5, 0x7f04002a

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Lcom/fiio/music/util/cr;

    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$1(Lcom/fiio/music/adapter/FileListAdapter;Lcom/fiio/music/util/cr;)V

    .line 593
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/adapter/FileListAdapter;->songsList:Ljava/util/List;

    .line 594
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/adapter/FileListAdapter;->filesList:Ljava/util/ArrayList;

    .line 595
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/FileListAdapter;->songsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/FileListAdapter;->songsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/FileListAdapter;->songsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 600
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 601
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 602
    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 814
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_3

    .line 819
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->cancelSelect()V

    .line 821
    :cond_3
    return-void

    .line 608
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$3(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/cf;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 612
    new-instance v1, Lcom/fiio/music/util/cp;

    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 613
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 616
    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v4, "tabEFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 617
    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v4

    const-string v5, "AZtabEFM"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v4

    .line 618
    invoke-virtual {v1, v0, v3, v4}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 619
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 620
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 621
    if-nez v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 624
    :cond_4
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 625
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 626
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 628
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    :cond_5
    if-ltz v2, :cond_3

    .line 638
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 647
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 649
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 659
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$3(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/cf;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 663
    new-instance v1, Lcom/fiio/music/util/cp;

    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 664
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 667
    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v4, "tabEFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 668
    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v4

    const-string v5, "AZtabEFM"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v4

    .line 669
    invoke-virtual {v1, v0, v3, v4}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 671
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 672
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/fiio/music/adapter/FileListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    .line 673
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 685
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v4

    .line 686
    iget-object v5, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-static {v0, v4, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 673
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 674
    iget-object v5, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v5, v5, Lcom/fiio/music/adapter/FileListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 675
    if-eqz v5, :cond_8

    .line 676
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 677
    goto :goto_1

    .line 678
    :cond_8
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 679
    iget-object v5, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v5, v5, Lcom/fiio/music/adapter/FileListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    invoke-virtual {v5, v0, v7}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_1

    .line 681
    :cond_9
    iget-object v5, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v5, v5, Lcom/fiio/music/adapter/FileListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    invoke-virtual {v5, v0, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_1

    .line 688
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 689
    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 688
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 697
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$3(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/cf;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/fiio/music/util/cp;

    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 702
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "tabEFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/FileListAdapter;->access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v4, "AZtabEFM"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v3

    .line 707
    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 710
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 711
    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 713
    :cond_c
    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "batch"

    invoke-static {v1, v2, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 721
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 722
    iget-object v2, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/f;->b:Landroid/widget/Toast;

    .line 723
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 728
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->P()V

    .line 729
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/adapter/FileListAdapter;->listhhArrayList:Ljava/util/ArrayList;

    .line 730
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/adapter/FileListAdapter;->selectItem:Ljava/util/List;

    .line 733
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 738
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 739
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 740
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 741
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$6(Lcom/fiio/music/adapter/FileListAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_f

    .line 742
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 750
    :cond_d
    :goto_3
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 751
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 752
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 753
    iget-object v4, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/FileListAdapter;->access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    new-instance v0, Lcom/fiio/music/adapter/g;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/g;-><init>(Lcom/fiio/music/adapter/f;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    new-instance v0, Lcom/fiio/music/adapter/h;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/h;-><init>(Lcom/fiio/music/adapter/f;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 733
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 734
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/FileListAdapter;->selectItem:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 743
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$6(Lcom/fiio/music/adapter/FileListAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 744
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setContentView(I)V

    goto :goto_3

    .line 745
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$6(Lcom/fiio/music/adapter/FileListAdapter;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 746
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setContentView(I)V

    goto :goto_3

    .line 747
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/adapter/f;->a:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/FileListAdapter;->access$6(Lcom/fiio/music/adapter/FileListAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_d

    .line 748
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_3

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
