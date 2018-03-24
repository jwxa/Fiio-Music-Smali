.class public Lcom/fiio/music/adapter/DownLoadingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownLoadingListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/DownLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListener:Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/DownLoadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->data:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/DownLoadingListAdapter;)Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->mItemListener:Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/high16 v9, 0x41700000    # 15.0f

    const v8, 0x7f0200c5

    const/4 v5, 0x1

    const v7, 0x7f0200c4

    const/4 v6, 0x0

    .line 57
    if-nez p2, :cond_1

    .line 59
    new-instance v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/DownLoadingListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b00a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0b00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->pb_download_list_item:Landroid/widget/ProgressBar;

    .line 65
    const v0, 0x7f0b00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0b00ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 73
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->pb_download_list_item:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 80
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->pb_download_list_item:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 81
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 86
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/h;->a(IF)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u8fde\u63a5..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    new-instance v3, Lcom/fiio/music/adapter/b;

    invoke-direct {v3, p0, v0}, Lcom/fiio/music/adapter/b;-><init>(Lcom/fiio/music/adapter/DownLoadingListAdapter;Lcom/fiio/music/entity/DownLoadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    new-instance v3, Lcom/fiio/music/adapter/c;

    invoke-direct {v3, p0, v0}, Lcom/fiio/music/adapter/c;-><init>(Lcom/fiio/music/adapter/DownLoadingListAdapter;Lcom/fiio/music/entity/DownLoadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 145
    iget-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 147
    iget-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 148
    iget-object v0, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 150
    return-object p2

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    if-nez v2, :cond_3

    .line 90
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/h;->a(IF)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 93
    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 94
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u5b8c\u6210\u4efb\u52a1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/h;->a(IF)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 99
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f0202e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u7b49\u5f85\u4e0b\u8f7d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 103
    :cond_5
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 104
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f0202d0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 106
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u5220\u9664..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 108
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 110
    :cond_6
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 111
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/h;->a(IF)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u6682\u505c..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 114
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_delete:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 116
    :cond_7
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 117
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/h;->a(IF)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u53d1\u751f\u9519\u8bef"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 120
    :cond_8
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    const-string v3, "\u670d\u52a1\u5668\u627e\u4e0d\u5230\u6587\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->btn_download_list_item_pause:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/DownLoadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->data:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/fiio/music/adapter/DownLoadingListAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public setItemListener(Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;)Lcom/fiio/music/adapter/DownLoadingListAdapter;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter;->mItemListener:Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    .line 37
    return-object p0
.end method
