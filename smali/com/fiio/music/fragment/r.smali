.class final Lcom/fiio/music/fragment/r;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/r;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/r;->b:Landroid/app/AlertDialog;

    .line 1381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/fragment/r;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const-string v2, "\u8bf7\u9009\u62e9\u6587\u4ef6!"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1405
    const/16 v2, 0x111

    .line 1404
    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/r;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1410
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
