.class public Lcom/fiio/music/activity/ScanDirectoryActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "ScanDirectoryActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:[Ljava/io/File;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ScanData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/fiio/music/util/ck;

.field private f:Ljava/io/File;

.field private g:Lcom/fiio/music/adapter/ScanListAdapter;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/fiio/music/util/cr;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:[Ljava/lang/String;

.field private t:Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;

.field private u:Landroid/content/IntentFilter;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    .line 52
    const-string v0, "/mnt"

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->i:Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    .line 176
    new-instance v0, Lcom/fiio/music/activity/ge;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ge;-><init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->y:Landroid/view/View$OnClickListener;

    .line 315
    new-instance v0, Lcom/fiio/music/activity/gf;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gf;-><init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->z:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->f:Ljava/io/File;

    .line 136
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->h:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/entity/ScanData;

    const-string v3, "/mnt*/ "

    invoke-direct {v1, v3, v2}, Lcom/fiio/music/entity/ScanData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/fiio/music/adapter/ScanListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    invoke-direct {v0, p0, v1, v2}, Lcom/fiio/music/adapter/ScanListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    .line 139
    iput-boolean v6, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->x:Z

    .line 140
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->f:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Ljava/io/File;)V

    .line 141
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->n:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->q:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    .line 148
    invoke-static {p0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 149
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 154
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->s:[Ljava/lang/String;

    move v1, v2

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/entity/ScanData;

    iget-object v3, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->h:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/fiio/music/entity/ScanData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/fiio/music/adapter/ScanListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    invoke-direct {v0, p0, v1, v2}, Lcom/fiio/music/adapter/ScanListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    .line 168
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->n:Ljava/util/ArrayList;

    new-instance v5, Ljava/io/File;

    aget-object v0, v0, v2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_2
    iget-object v4, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->s:[Ljava/lang/String;

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->f:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->n:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->s:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 385
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->d:Lcom/fiio/music/util/ck;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->b:[Ljava/io/File;

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->m:Ljava/util/ArrayList;

    .line 388
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->b:[Ljava/io/File;

    if-eqz v0, :cond_6

    .line 389
    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->b:[Ljava/io/File;

    array-length v4, v1

    move v0, v2

    :goto_0
    if-lt v0, v4, :cond_7

    .line 398
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "/mnt"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 399
    iget-boolean v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->x:Z

    if-eqz v0, :cond_10

    .line 401
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 402
    :cond_0
    new-array v4, v9, [Ljava/lang/String;

    .line 403
    new-array v5, v9, [Ljava/lang/String;

    .line 404
    new-array v6, v9, [Ljava/lang/String;

    .line 405
    new-array v7, v9, [Ljava/lang/String;

    move v1, v2

    .line 406
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 419
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 420
    array-length v0, v7

    if-lez v0, :cond_1

    aget-object v0, v7, v2

    if-eqz v0, :cond_1

    .line 421
    aget-object v0, v7, v2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_1
    aget-object v0, v4, v2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    array-length v0, v5

    if-lez v0, :cond_2

    aget-object v0, v5, v2

    if-eqz v0, :cond_2

    .line 425
    aget-object v0, v5, v2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_2
    array-length v0, v6

    if-lez v0, :cond_1c

    aget-object v0, v6, v2

    if-eqz v0, :cond_1c

    .line 428
    aget-object v0, v6, v2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    .line 448
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 456
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckStateList()Ljava/util/List;

    move-result-object v3

    .line 457
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 458
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->setData(Ljava/util/List;)V

    .line 489
    :cond_6
    return-void

    .line 389
    :cond_7
    aget-object v5, v1, v0

    .line 390
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mnt/sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 391
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/internal_sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 394
    iput-boolean v9, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->x:Z

    .line 389
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 407
    :cond_a
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    const-string v8, "/mnt/internal_sd"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 409
    aput-object v0, v4, v2

    .line 406
    :cond_b
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 410
    :cond_c
    const-string v8, "/mnt/external_sd1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 411
    aput-object v0, v5, v2

    goto :goto_4

    .line 412
    :cond_d
    const-string v8, "/mnt/external_sd2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 413
    aput-object v0, v6, v2

    goto :goto_4

    .line 415
    :cond_e
    const-string v8, "/mnt/usb_storage"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 416
    aput-object v0, v7, v2

    goto :goto_4

    .line 431
    :cond_f
    invoke-static {}, Lcom/fiio/music/util/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 432
    invoke-static {v3, v9}, Lcom/fiio/music/util/cn;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 434
    goto/16 :goto_2

    .line 435
    :cond_10
    invoke-static {v3, v9}, Lcom/fiio/music/util/cn;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 437
    goto/16 :goto_2

    .line 438
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->l:Lcom/fiio/music/util/cr;

    const-string v1, "tabEFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->l:Lcom/fiio/music/util/cr;

    const-string v4, "AZtabEFM"

    invoke-virtual {v1, v4}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 440
    sget v4, Lcom/fiio/music/util/cn;->e:I

    if-ne v1, v4, :cond_12

    .line 441
    invoke-static {v3, v0}, Lcom/fiio/music/util/cn;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 442
    goto/16 :goto_2

    :cond_12
    sget v4, Lcom/fiio/music/util/cn;->d:I

    if-ne v1, v4, :cond_13

    .line 443
    invoke-static {v3, v0}, Lcom/fiio/music/util/cn;->d(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 444
    goto/16 :goto_2

    :cond_13
    if-nez v1, :cond_1c

    .line 445
    invoke-static {v3, v0}, Lcom/fiio/music/util/cn;->d(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 448
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    iget-object v5, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->b:[Ljava/io/File;

    array-length v6, v5

    move v3, v2

    :goto_5
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 450
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 451
    iget-object v8, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 458
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    const-string v4, "/mnt/sdcard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 462
    new-instance v4, Lcom/fiio/music/entity/ScanData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/fiio/music/entity/ScanData;-><init>(Ljava/lang/String;Z)V

    .line 463
    iget-object v5, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v5}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 464
    iget-object v5, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v5}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 465
    :cond_17
    invoke-virtual {v4, v9}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 469
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 467
    :cond_18
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    goto :goto_6

    .line 473
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    iget-object v3, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v3, Lcom/fiio/music/entity/ScanData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/fiio/music/entity/ScanData;-><init>(Ljava/lang/String;Z)V

    .line 479
    iget-object v4, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v4}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/$"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 480
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "$"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 481
    :cond_1a
    invoke-virtual {v3, v9}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 484
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1c
    move-object v1, v3

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 368
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->notifyDataSetChanged()V

    .line 380
    return-void

    .line 369
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v2, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v2, Lcom/fiio/music/entity/ScanData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/entity/ScanData;-><init>(Ljava/lang/String;Z)V

    .line 374
    iget-object v3, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v3}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "$"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanDirectoryActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/activity/ScanDirectoryActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->q:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic f(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/fiio/music/activity/ScanDirectoryActivity;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->x:Z

    return-void
.end method

.method static synthetic l(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 498
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->v:Z

    .line 82
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    .line 84
    iget v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    if-ne v0, v3, :cond_3

    .line 85
    const v0, 0x7f0400dd

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->setContentView(I)V

    .line 94
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 95
    new-instance v0, Lcom/fiio/music/util/cr;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->l:Lcom/fiio/music/util/cr;

    .line 96
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->l:Lcom/fiio/music/util/cr;

    const-string v1, "tabASort"

    invoke-virtual {v0, v1, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;Z)V

    .line 97
    iput v2, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->e:I

    .line 99
    invoke-static {}, Lcom/fiio/music/util/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->finish()V

    .line 104
    :cond_2
    new-instance v0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;-><init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->t:Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->t:Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->u:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const v0, 0x7f0b01c9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->k:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b0284

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0b0280

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->j:Landroid/widget/CheckBox;

    .line 112
    new-instance v0, Lcom/fiio/music/util/ck;

    invoke-direct {v0}, Lcom/fiio/music/util/ck;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->d:Lcom/fiio/music/util/ck;

    .line 113
    const v0, 0x7f0b0283

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->a:Landroid/widget/ListView;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->c:Ljava/util/List;

    .line 115
    invoke-direct {p0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a()V

    .line 116
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->g:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->j:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void

    .line 86
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 87
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 88
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 89
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 90
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->w:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 91
    const v0, 0x7f0400e0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity;->t:Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 642
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 643
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 644
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 650
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 651
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 652
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 658
    :goto_0
    return v0

    .line 654
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 655
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/SettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
