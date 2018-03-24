.class final Lcom/fiio/music/fragment/ai;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/ai;->b:Landroid/app/AlertDialog;

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$58(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1813
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$59(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$60(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0068

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    const-string v1, "LIST_CLASSIFY"

    const-string v2, "ALBUM"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1826
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1827
    iget-object v0, p0, Lcom/fiio/music/fragment/ai;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void

    .line 1816
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$61(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1817
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$60(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c006b

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    const-string v1, "LIST_CLASSIFY"

    const-string v2, "FOLDER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1819
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$62(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1820
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$60(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    const-string v1, "LIST_CLASSIFY"

    const-string v2, "ARTIST"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1822
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$63(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$60(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ai;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c006a

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    const-string v1, "LIST_CLASSIFY"

    const-string v2, "STYLE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
