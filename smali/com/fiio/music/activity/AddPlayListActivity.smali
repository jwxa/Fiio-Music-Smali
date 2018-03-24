.class public Lcom/fiio/music/activity/AddPlayListActivity;
.super Landroid/app/Activity;
.source "AddPlayListActivity.java"


# static fields
.field private static p:Z


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/fiio/music/service/h;

.field private c:Landroid/content/Context;

.field private d:Lcom/fiio/music/entity/Song;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/fiio/music/b/k;

.field private g:Landroid/widget/Button;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/Toast;

.field private k:Lcom/fiio/music/adapter/PlayListAdapter;

.field private l:Lcom/fiio/music/b/j;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/fiio/music/util/bw;

.field private o:I

.field private q:I

.field private r:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->d:Lcom/fiio/music/entity/Song;

    .line 63
    iput-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->e:Ljava/util/List;

    .line 67
    iput-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->h:Z

    .line 68
    iput-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->i:Z

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    .line 281
    new-instance v0, Lcom/fiio/music/activity/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/i;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    const-string v1, "changestyle"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 429
    const-string v2, "styleChange"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 430
    const-string v2, "zengxy---"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UI   changeStyleboolean  :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "ChangeStyle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    if-eqz p1, :cond_0

    const-string v1, "batch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "batch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-static {p2}, Lcom/fiio/music/activity/o;->a(Ljava/util/List;)V

    .line 436
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 437
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->j:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/AddPlayListActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/AddPlayListActivity;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->d:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic f(Lcom/fiio/music/activity/AddPlayListActivity;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v5, 0x7f0400a4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    if-ne v0, v7, :cond_1

    const v0, 0x7f0400a3

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    const v0, 0x7f0b0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    new-array v0, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v2

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c0073

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0076

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v3, 0x7f0b020b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/fiio/music/activity/l;

    invoke-direct {v5, p0, v6, v4, v0}, Lcom/fiio/music/activity/l;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b020a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/fiio/music/activity/m;

    invoke-direct {v4, p0, v0}, Lcom/fiio/music/activity/m;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    new-instance v1, Lcom/fiio/music/activity/n;

    invoke-direct {v1, p0, v6}, Lcom/fiio/music/activity/n;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    invoke-static {p0, v5, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    invoke-static {p0, v5, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    invoke-static {p0, v5, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->j:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/b/j;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->l:Lcom/fiio/music/b/j;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/adapter/PlayListAdapter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->k:Lcom/fiio/music/adapter/PlayListAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v5, 0x7f02049d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/fiio/music/activity/AddPlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/AddPlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/fiio/music/activity/AddPlayListActivity;->p:Z

    .line 120
    const-string v0, "zengxy---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UI   :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/fiio/music/activity/AddPlayListActivity;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/fiio/music/activity/AddPlayListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    .line 125
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    if-ne v0, v4, :cond_4

    .line 126
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->setContentView(I)V

    .line 127
    const v0, 0x7f02049b

    iput v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->o:I

    .line 138
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 139
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->b:Lcom/fiio/music/service/h;

    .line 140
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->n:Lcom/fiio/music/util/bw;

    .line 141
    iput-object p0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->f:Lcom/fiio/music/b/k;

    .line 143
    new-instance v0, Lcom/fiio/music/b/j;

    iget-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->l:Lcom/fiio/music/b/j;

    .line 144
    invoke-virtual {p0}, Lcom/fiio/music/activity/AddPlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    const-string v0, "Song"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->d:Lcom/fiio/music/entity/Song;

    .line 152
    :cond_2
    const-string v0, "batch"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->h:Z

    .line 153
    const-string v0, "multi"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->i:Z

    .line 155
    iget-boolean v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->h:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Lcom/fiio/music/activity/o;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-static {}, Lcom/fiio/music/activity/o;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->e:Ljava/util/List;

    .line 162
    :cond_3
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->g:Landroid/widget/Button;

    .line 163
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->a:Landroid/widget/ListView;

    .line 164
    new-instance v0, Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/AddPlayListActivity;->l:Lcom/fiio/music/b/j;

    invoke-virtual {v2}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/fiio/music/activity/AddPlayListActivity;->o:I

    iget-object v5, p0, Lcom/fiio/music/activity/AddPlayListActivity;->b:Lcom/fiio/music/service/h;

    iget v6, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/PlayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZLcom/fiio/music/service/h;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->k:Lcom/fiio/music/adapter/PlayListAdapter;

    .line 165
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->k:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/AddPlayListActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/activity/j;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/j;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->m:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/fiio/music/activity/k;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/k;-><init>(Lcom/fiio/music/activity/AddPlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void

    .line 128
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 129
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->setContentView(I)V

    .line 130
    const v0, 0x7f02049c

    iput v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->o:I

    goto/16 :goto_0

    .line 131
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 132
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->setContentView(I)V

    .line 133
    iput v5, p0, Lcom/fiio/music/activity/AddPlayListActivity;->o:I

    goto/16 :goto_0

    .line 134
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/AddPlayListActivity;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 135
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->setContentView(I)V

    .line 136
    iput v5, p0, Lcom/fiio/music/activity/AddPlayListActivity;->o:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 414
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 415
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 416
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 422
    :goto_0
    return v0

    .line 418
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 419
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
