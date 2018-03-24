.class final Lcom/fiio/music/fragment/ag;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/ag;->b:Landroid/app/AlertDialog;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 724
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v0, v0, Lcom/fiio/music/fragment/SettingMenuFragment;->gridViewAdapter:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->getBooleanCheckBoxSizeIsNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "GridData"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 728
    new-instance v1, Lcom/a/a/aq;

    invoke-direct {v1}, Lcom/a/a/aq;-><init>()V

    .line 730
    iget-object v2, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v2, v2, Lcom/fiio/music/fragment/SettingMenuFragment;->gridViewAdapter:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/GridViewAdapter;->getImageLists()Ljava/util/ArrayList;

    move-result-object v2

    .line 732
    invoke-virtual {v1, v2}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "grid"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 736
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 738
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 749
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 756
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 758
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 759
    iget-object v1, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 760
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 766
    :goto_1
    return-void

    .line 738
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    .line 740
    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getcheckBox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v1, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/GridData;->getIntSkin()I

    move-result v0

    const-string v2, "skinparamter"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "skin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ag;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    goto :goto_1
.end method
