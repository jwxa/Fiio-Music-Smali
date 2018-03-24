.class final Lcom/fiio/music/fragment/af;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/af;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/af;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/fiio/music/fragment/af;->c:Landroid/app/AlertDialog;

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/fiio/music/fragment/af;->b:Landroid/content/Context;

    const-string v1, "fiiomusic.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1732
    iget-object v0, p0, Lcom/fiio/music/fragment/af;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/g;->b(Landroid/content/Context;)V

    .line 1733
    iget-object v0, p0, Lcom/fiio/music/fragment/af;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/g;->a(Landroid/content/Context;)V

    .line 1734
    iget-object v0, p0, Lcom/fiio/music/fragment/af;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$57(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    .line 1735
    iget-object v0, p0, Lcom/fiio/music/fragment/af;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1736
    return-void
.end method
