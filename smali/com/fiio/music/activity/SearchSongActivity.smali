.class public Lcom/fiio/music/activity/SearchSongActivity;
.super Landroid/app/Activity;
.source "SearchSongActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/fiio/music/service/h;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/fiio/music/util/ClearEditText;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/fiio/music/i/b;

.field private l:Lcom/fiio/music/b/k;

.field private m:Lcom/fiio/music/b/c;

.field private n:Lcom/fiio/music/b/b;

.field private o:Lcom/fiio/music/adapter/SearchAutoAdapter;

.field private p:Z

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->a:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->b:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->c:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->d:Ljava/util/List;

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->r:I

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/adapter/SearchAutoAdapter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->o:Lcom/fiio/music/adapter/SearchAutoAdapter;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->h:Lcom/fiio/music/util/ClearEditText;

    invoke-virtual {v0}, Lcom/fiio/music/util/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "search_history"

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/SearchSongActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 366
    const-string v0, "search_history"

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v4, Ljava/util/ArrayList;

    .line 369
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 374
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 380
    :goto_2
    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 383
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 388
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_history"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 374
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 390
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_history"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/util/ClearEditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->h:Lcom/fiio/music/util/ClearEditText;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->k:Lcom/fiio/music/i/b;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->l:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->e:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic f(Lcom/fiio/music/activity/SearchSongActivity;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/fiio/music/activity/SearchSongActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/fiio/music/activity/SearchSongActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/c;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->m:Lcom/fiio/music/b/c;

    return-object v0
.end method

.method static synthetic j(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/b;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->n:Lcom/fiio/music/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 408
    iget v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->r:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 429
    return-void

    .line 410
    :pswitch_0
    invoke-static {v1, p1, p2}, Lcom/fiio/music/activity/LocalMusicActivity;->setSearchSongFlag(III)V

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-static {v1, p1, p2}, Lcom/fiio/music/activity/LocalMusicActivity;->setSearchSongFlag(III)V

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 327
    :sswitch_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->finish()V

    goto :goto_0

    .line 331
    :sswitch_1
    const-string v0, "search_history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/SearchSongActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "search_history.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    invoke-direct {p0}, Lcom/fiio/music/activity/SearchSongActivity;->a()V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 337
    :sswitch_2
    invoke-direct {p0}, Lcom/fiio/music/activity/SearchSongActivity;->a()V

    .line 338
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->o:Lcom/fiio/music/adapter/SearchAutoAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SearchAutoAdapter;->initSearchHistory()V

    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x7f0b02b0 -> :sswitch_0
        0x7f0b02b2 -> :sswitch_2
        0x7f0b02b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->r:I

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->p:Z

    .line 112
    invoke-virtual {p0}, Lcom/fiio/music/activity/SearchSongActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    .line 114
    iget v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 115
    const v0, 0x7f0400f4

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->setContentView(I)V

    .line 124
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->j:Ljava/util/List;

    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->l:Lcom/fiio/music/b/k;

    new-instance v0, Lcom/fiio/music/b/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->m:Lcom/fiio/music/b/c;

    new-instance v0, Lcom/fiio/music/b/b;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->n:Lcom/fiio/music/b/b;

    new-instance v0, Lcom/fiio/music/i/b;

    iget-object v1, p0, Lcom/fiio/music/activity/SearchSongActivity;->j:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    invoke-direct {v0, p0, v1, v2}, Lcom/fiio/music/i/b;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->k:Lcom/fiio/music/i/b;

    new-instance v0, Lcom/fiio/music/adapter/SearchAutoAdapter;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p0}, Lcom/fiio/music/adapter/SearchAutoAdapter;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->o:Lcom/fiio/music/adapter/SearchAutoAdapter;

    const v0, 0x7f0b02b5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/SearchSongActivity;->o:Lcom/fiio/music/adapter/SearchAutoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/fiio/music/activity/gr;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gr;-><init>(Lcom/fiio/music/activity/SearchSongActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b02b6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->i:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const v0, 0x7f0b02b4

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/ClearEditText;

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->h:Lcom/fiio/music/util/ClearEditText;

    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->h:Lcom/fiio/music/util/ClearEditText;

    new-instance v1, Lcom/fiio/music/activity/gs;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gs;-><init>(Lcom/fiio/music/activity/SearchSongActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    const v0, 0x7f0b02b0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->f:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 116
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 117
    const v0, 0x7f0400f5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 119
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 120
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 121
    const v0, 0x7f0400f7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SearchSongActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 396
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 397
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 398
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 404
    :goto_0
    return v0

    .line 400
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 302
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->e:Lcom/fiio/music/service/h;

    .line 307
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->e:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 309
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/fiio/music/activity/SearchSongActivity;->e:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 314
    return-void
.end method
